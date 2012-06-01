using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.VisualStudio.TextTemplating.VSHost;
using Microsoft.VisualStudio.Modeling;
using FourDeep.Dizzle;


namespace Debugging
{
    public class EventSourcingModelTextTransformation : Microsoft.VisualStudio.TextTemplating.VSHost.ModelingTextTransformation
    {
        public override string TransformText()
        {
            throw new NotImplementedException();
        }

        public string GetAggregateRootName(BoundedContext context)
        {
            if (context != null && context.Element != null)
                return context.Element.Name;
            else return "Aggregate Root name cannot be obtained. Make sure your model contains an aggregate root with a name";
        }

        public string GetAggregateRootDescription(BoundedContext context)
        {
            if (context != null && context.Element != null)
                return context.Element.Description;
            else return "Aggregate Root description cannot be obtained. Make sure your model contains an aggregate root with a description";

        }

        public string GetAggregateStateName(BoundedContext context)
        {
            if (context != null && context.Element != null && context.Element.AggregateState != null)
                return context.Element.AggregateState.Name;
            else return "Aggregate State has not been defined for the Aggregate Root.  Please make sure you define the State object and link it to the root";
        }

        public string GetAggregateStateDescription(BoundedContext context)
        {
            if (context != null && context.Element != null && context.Element.AggregateState != null)
                return context.Element.AggregateState.Description;
            else return "Aggregate State has not been defined for the Aggregate Root.  Please make sure you define the State object and link it to the root";
        }

        public string GetAggregateStateIdType(BoundedContext context)
        {
            if (context != null && context.Element != null && context.Element.AggregateState != null)
                return context.Element.AggregateState.Properties.OrderBy(prop=>prop.Order).First().Type;
            return "object";
        }

        public void BuildCommandInterfaceMethods(BoundedContext context)
        {
            //void When(CreateUser c);
            this.PushIndent("\t\t");
            foreach(DomainCommand command in context.Element.DomainCommands)
            {
                this.WriteLine("void When(" + command.Name + " c);");
            }
            this.PopIndent();
        }

        public void BuildEventInterfaceMethods(BoundedContext context)
        {
            //void When(UserCreated c);
            this.PushIndent("\t\t");
            foreach (DomainEvent evt in context.Element.AggregateState.DomainEvents)
            {
                this.WriteLine("void When(" + evt.Name + " e);");
            }
            this.PopIndent();
        }

        public void BuildAggregateRoot(BoundedContext context)
        {
            this.WriteLine("public partial class "+context.Element.Name +" : IAggregateRoot,");
            this.PushIndent("\t");
		    this.WriteLine("IMemento<IAggregateState>,");
		    BuildCommandHandlerInterfaces(context);
            this.WriteLine("{");
            this.PushIndent("\t");
            this.WriteLine("internal AccountState _state = null;");
            this.WriteLine("internal IRepository _repository = null;");
            this.WriteLine("private readonly Func<MyMessageContext> _contextFactory;");
            //public Account()
            //{
            //    _state = new AccountState();
            //}

            //public Account(IRepository repository, Func<MyMessageContext> contextFactory)
            //{
            //    _state = new AccountState();
            //    _repository = repository;
            //    _contextFactory = contextFactory;
            //}

            //public Account(IRepository repository, AccountState state)
            //{
            //    _state = state;
            //    _repository = repository;
            //}

            //public Account(IRepository repository, Guid accountNumber)
            //{
            //    _repository = repository;
            //    _state = _repository.GetStateById<AccountState>(accountNumber);
            //}
        }

        public void BuildAggregateRootState()
        {
        }

        public void BuildEvents()
        {
        }

        public void BuildCommands()
        {
        }

        public void BuildViewProjections()
        {
        }

        public void BuildEventSpecifications()
        {
        }

        public void BuildProperties(LinkedElementCollection<Property> properties)
        {
            int count = 0;
            foreach (Property prop in properties.ToArray().AsQueryable().OrderBy(prp=>prp.Order))
            {
                if (count == 0)
                    this.Write(prop.Type + " " + prop.Name.Substring(0, 1).ToLower() + prop.Name.Substring(1, prop.Name.Length-1));
                else
                    this.Write(", " + prop.Type + " " + prop.Name.Substring(0, 1).ToLower() + prop.Name.Substring(1, prop.Name.Length - 1));
                count++;
            }
        }

        public void BuildConstructorProperties(LinkedElementCollection<Property> properties)
        {
            this.PushIndent("\t\t\t");
            foreach (Property prop in properties)
            {
                this.WriteLine(prop.Name + " = " + prop.Name.Substring(0, 1).ToLower() + prop.Name.Substring(1, prop.Name.Length - 1) + ";");
            }
            this.PopIndent();
        }

        public string BuildPropertiesToString(LinkedElementCollection<Property> properties)
        {
            StringBuilder sb = new StringBuilder();
            int count = 1;
            sb.Append("string.Format(\"Type: {0}");
            foreach (Property prop in properties)
            {
                sb.Append(", " + prop.Name + " {"+count+"}");
                count++;
            }
            sb.Append("\",GetType().Name");
            foreach (Property prop in properties)
            {
                sb.Append(", " + prop.Name);
                count++;
            }
            sb.Append(")");
            return sb.ToString();
        }

        public string BuildPropertyEqualitiesToString(LinkedElementCollection<Property> properties,List<string> ignorePropertyNames)
        {
            //(AccountNumber == p.AccountNumber) && (AccountName == p.AccountName)
            StringBuilder sb = new StringBuilder();
            int count = 0;
            foreach (Property prop in properties)
            {
                if (!ignorePropertyNames.Contains(prop.Name))
                {
                    if (count == 0)
                    {
                        sb.Append("(" + prop.Name + " == p." + prop.Name + ")");
                    }
                    else
                    {
                        sb.Append(" && (" + prop.Name + " == p." + prop.Name + ")");
                    }
                    count++;
                }
            }
            return sb.ToString();
        }

        public void BuildCommandHandlerInterfaces(BoundedContext context)
        {
            int count = 0;
            foreach (DomainCommand cmd in context.DomainCommands)
            {
                if (count == 0)
                {
                    this.WriteLine("Define.Handle<" + cmd.Name + ">");
                    this.PushIndent("\t");
                }
                else
                {
                    this.WriteLine(this.CurrentIndent + ", Define.Handle<" + cmd.Name + ">");
                }
                count++;
            }
            this.PopIndent();
        }
    }

    
}
