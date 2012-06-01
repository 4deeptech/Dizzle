 

#region (c) 2012 4Deep Technologies LLC

// Copyright (c) 4Deep Technologies LLC 2012 (http://www.4deeptech.com)
// Created by Darren Ford
// Based on code by Rinat Abdullin of Lokad (http://www.lokad.com)

//Generated using 4Dizzle DSL Model and Code Generator
//see http://www.4deeptech.com/blog/post/2012/02/16/Creating-a-DSL-for-DDD-and-Event-Sourcing-Code-Generation.aspx
#endregion
 
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Reflection;
using System.Runtime.Serialization;
using ProtoBuf;
using Lokad.Cqrs;
using Context;
using Awesome.Domain.Contracts; 
using Awesome.Domain.Events;
using Awesome.Domain.Commands;
using Awesome.Domain.Model; 
using Ranken.Domain;

namespace Awesome.Domain.Model
{
	/// <summary>
	/// My sample person aggregate
	/// </summary> 
	public partial class PersonAggregate : IAggregate<Guid>, IPersonAggregate
	{
		readonly PersonAggregateState _state;
        readonly Action<IEvent<Guid>> _observer;
        private readonly MyMessageContext _context;
		readonly Repository _repository;

		public PersonAggregate(PersonAggregateState state, Action<IEvent<Guid>> observer,Repository repository, MyMessageContext context)
        {
            _state = state;
            _observer = observer;
			_context = context;
			_repository = repository;
        }

		public void Execute(ICommand<Guid> c)
        {
            ThrowOnInvalidStateTransition(c);

            RedirectToWhen.InvokeCommand(this, c);
        }

        void Apply(IEvent<Guid> e)
        {
            _state.Apply(e);
            _observer(e);
        }

	}//end aggregateroot

	/// <summary>
	/// My person state container
	/// </summary> 

	[DataContract]
    public partial class PersonAggregateState : IAggregateState, IPersonAggregateState
    {

		/// <summary>
		/// The unique id for the person
		/// </summary>
		[DataMember(Order = 1)]
        public Guid Id { get; internal set; }

		/// <summary>
		/// 
		/// </summary>
		[DataMember(Order = 2)]
        public String FirstName { get; internal set; }

		/// <summary>
		/// 
		/// </summary>
		[DataMember(Order = 3)]
        public String LastName { get; internal set; }

		/// <summary>
		/// The person's salaray
		/// </summary>
		[DataMember(Order = 4)]
        public float Salary { get; internal set; }

		/// <summary>
		/// The list of bonuses
		/// </summary>
		[DataMember(Order = 5)]
        public List<BonusReward> Bonuses { get; internal set; }

        
		public PersonAggregateState(IEnumerable<IEvent<IIdentity>> events)
        {
            foreach (var e in events)
            {
                Apply(e);
            }
        }

		public int Version { get; private set; }

		public void Apply(IEvent<IIdentity> e)
        {
            Version += 1;
            RedirectToWhen.InvokeEventOptional(this, e);
        }

    }//end aggregate state

	#region Aggregate and AggregateState interfaces

	/// <summary> 
	/// PersonAggregate command interface
	/// </summary> 
	public interface IPersonAggregate
    {
		void When(CreatePerson c);
		void When(RewardPerson c);
    }
    

	/// <summary>
	/// PersonAggregateState event interface
	/// </summary> 

    public interface IPersonAggregateState
    {
		void When(PersonCreated e);
		void When(PersonRewarded e);
    }

	#endregion	 

	#region entities
	[DataContract]
	public partial class BonusReward
	{
		/// <summary>
		///  
		/// </summary>
		[DataMember(Order = 1)]
        public float BonusAmount { get; set; }

		/// <summary>
		/// The date the bonus is to be paid 
		/// </summary>
		[DataMember(Order = 2)]
        public DateTime BonusDate { get; set; }

		
		public BonusReward()
		{
		}

		public BonusReward(float bonusAmount, DateTime bonusDate) 
		{
			BonusAmount = bonusAmount;
			BonusDate = bonusDate;
		}

	}
	#endregion
}	

namespace Awesome.Domain.Commands 
{
	/// <summary>
	/// Create a new person
	/// </summary>
	[DataContract(Namespace = "Awesome.Domain")]
    public partial class CreatePerson : ICommand<Guid>
    {

		/// <summary>
		/// The unique id for the person
		/// </summary>
		[DataMember(Order = 1)] 
        public Guid Id { get; private set; }

		/// <summary>
		/// 
		/// </summary>
		[DataMember(Order = 2)] 
        public String FirstName { get; private set; }

		/// <summary>
		/// 
		/// </summary>
		[DataMember(Order = 3)] 
        public String LastName { get; private set; }

		/// <summary>
		/// The person's salaray
		/// </summary>
		[DataMember(Order = 4)] 
        public float Salary { get; private set; }

		public CreatePerson() 
        {
            
        }

        public CreatePerson(Guid id, String firstName, String lastName, float salary)
        {
            Id = id;
			FirstName = firstName;
			LastName = lastName;
			Salary = salary;
        }

        public override string ToString()
        {
            return string.Format("Type: {0}, Id {1}, FirstName {2}, LastName {3}, Salary {4}",GetType().Name, Id, FirstName, LastName, Salary);
        }
    }//end CreatePerson class


	/// <summary>
	/// 
	/// </summary>
	[DataContract(Namespace = "Awesome.Domain")]
    public partial class RewardPerson : ICommand<Guid>
    {

		/// <summary>
		/// The unique id for the person
		/// </summary>
		[DataMember(Order = 1)] 
        public Guid Id { get; private set; }

		/// <summary>
		/// The bonus amount
		/// </summary>
		[DataMember(Order = 2)] 
        public float BonusAmount { get; private set; }

		public RewardPerson() 
        {
            
        }

        public RewardPerson(Guid id, float bonusAmount)
        {
            Id = id;
			BonusAmount = bonusAmount;
        }

        public override string ToString()
        {
            return string.Format("Type: {0}, Id {1}, BonusAmount {2}",GetType().Name, Id, BonusAmount);
        }
    }//end RewardPerson class


}//end namespace

namespace Awesome.Domain.Events
{
	/// <summary>
	/// A person was created
	/// </summary>
	[DataContract(Namespace = "Awesome.Domain")]
    public partial class PersonCreated : IEvent<Guid>
    {

		/// <summary>
		/// The unique id for the person
		/// </summary>
		[DataMember(Order = 1)] 
        public Guid Id { get; private set; }

		/// <summary>
		/// 
		/// </summary>
		[DataMember(Order = 2)] 
        public String FirstName { get; private set; }

		/// <summary>
		/// 
		/// </summary>
		[DataMember(Order = 3)] 
        public String LastName { get; private set; }

		/// <summary>
		/// The person's salaray
		/// </summary>
		[DataMember(Order = 4)] 
        public float Salary { get; private set; }

		public PersonCreated() 
        {
            
        }

        public PersonCreated(Guid id, String firstName, String lastName, float salary)
        {
            Id = id;
			FirstName = firstName;
			LastName = lastName;
			Salary = salary;
        }

        public override string ToString()
        {
            return string.Format("Type: {0}, Id {1}, FirstName {2}, LastName {3}, Salary {4}",GetType().Name, Id, FirstName, LastName, Salary);
        }
    }//end PersonCreated class


	/// <summary>
	/// A person was rewarded
	/// </summary>
	[DataContract(Namespace = "Awesome.Domain")]
    public partial class PersonRewarded : IEvent<Guid>
    {

		/// <summary>
		/// The unique id for the person
		/// </summary>
		[DataMember(Order = 1)] 
        public Guid Id { get; private set; }

		/// <summary>
		/// 
		/// </summary>
		[DataMember(Order = 2)] 
        public String FirstName { get; private set; }

		/// <summary>
		/// 
		/// </summary>
		[DataMember(Order = 3)] 
        public String LastName { get; private set; }

		/// <summary>
		/// The person's salaray
		/// </summary>
		[DataMember(Order = 4)] 
        public float Salary { get; private set; }

		/// <summary>
		/// The bonus amount
		/// </summary>
		[DataMember(Order = 5)] 
        public float BonusAmount { get; private set; }

		public PersonRewarded() 
        {
            
        }

        public PersonRewarded(Guid id, String firstName, String lastName, float salary, float bonusAmount)
        {
            Id = id;
			FirstName = firstName;
			LastName = lastName;
			Salary = salary;
			BonusAmount = bonusAmount;
        }

        public override string ToString()
        {
            return string.Format("Type: {0}, Id {1}, FirstName {2}, LastName {3}, Salary {4}, BonusAmount {5}",GetType().Name, Id, FirstName, LastName, Salary, BonusAmount);
        }
    }//end PersonRewarded class


}//end namespace

namespace Awesome.Domain.Views 
{
	/// <summary>
	/// A view of a Person
	/// </summary>
    public partial class PersonView
    {

		/// <summary>
		/// The unique id for the person
		/// </summary>
		[DataMember(Order = 1)] 
        public Guid Id { get; set; }

		/// <summary>
		/// 
		/// </summary>
		[DataMember(Order = 2)] 
        public String FirstName { get; set; }

		/// <summary>
		/// 
		/// </summary>
		[DataMember(Order = 3)] 
        public String LastName { get; set; }

		/// <summary>
		/// The person's salaray
		/// </summary>
		[DataMember(Order = 4)] 
        public float Salary { get; set; }

		/// <summary>
		/// The list of bonuses
		/// </summary>
		[DataMember(Order = 5)] 
        public List<BonusReward> Bonuses { get; set; }

		public PersonView() 
        {
            
        }

        public PersonView(Guid id, String firstName, String lastName, float salary, List<BonusReward> bonuses)
        {
            Id = id;
			FirstName = firstName;
			LastName = lastName;
			Salary = salary;
			Bonuses = bonuses;
        }
        
    }//end PersonView class


}//end namespace