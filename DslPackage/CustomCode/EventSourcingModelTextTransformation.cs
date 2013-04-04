using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.VisualStudio.TextTemplating.VSHost;
using Microsoft.VisualStudio.Modeling;
using FourDeep.Dizzle;


namespace Debugging
{
    public class EventSourcingModelTextTransformation : ModelingTextTransformation
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
            {
                var props = context.Element.AggregateState.Properties;
                if (props.Count() > 0)
                    return props.OrderBy(prop => prop.Order).First().Type;
                else
                {
                    return "object //You are missing the first property which should be the aggregates id";
                }
            }
            else
                return "object //You are missing the aggregate state item";
        }

        public void BuildCommandInterfaceMethods(BoundedContext context)
        {
            this.PushIndent("\t\t");
            foreach(DomainCommand command in context.Element.DomainCommands)
            {
                this.WriteLine("void When(" + command.Name + " c);");
            }
            this.PopIndent();
        }

        public void BuildCommandInterfaceMethodsWithContext(BoundedContext context)
        {
            this.PushIndent("\t\t");
            foreach (DomainCommand command in context.Element.DomainCommands)
            {
                if(!string.IsNullOrEmpty(command.RequiredPrivilege))
                {
                    this.WriteLine("[RequiresPrivilege(\"" + command.RequiredPrivilege + "\")]");
                }
                this.WriteLine("void When(" + command.Name + " c, MessageContext context);");
            }
            this.PopIndent();
        }

        public void BuildEventInterfaceMethods(BoundedContext context)
        {
            this.PushIndent("\t\t");
            foreach (DomainEvent evt in context.Element.AggregateState.DomainEvents)
            {
                this.WriteLine("void When(" + evt.Name + " e);");
            }
            this.PopIndent();
        }

        public void BuildEventInterfaceMethodsWithContext(BoundedContext context)
        {
            this.PushIndent("\t\t");
            foreach (DomainEvent evt in context.Element.AggregateState.DomainEvents)
            {
                this.WriteLine("void When(" + evt.Name + " e, MessageContext context);");
            }
            this.PopIndent();
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
    }
 }
