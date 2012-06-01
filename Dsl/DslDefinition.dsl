<?xml version="1.0" encoding="utf-8"?>
<Dsl xmlns:dm0="http://schemas.microsoft.com/VisualStudio/2008/DslTools/Core" dslVersion="1.0.0.0" Id="6801bebe-d5cf-456f-a60d-90ac6d4cb888" Description="Four Deep Dizzle is a DSL for Event Source based DDD with CQRS. It is mainly built to be used with the Lokad.Cqrs lean implementation." Name="Dizzle" DisplayName="Dizzle" Namespace="FourDeep.Dizzle" ProductName="Dizzle" CompanyName="FourDeep" PackageGuid="473d108d-ec11-4cad-9e23-2aa12b6368a2" PackageNamespace="FourDeep.Dizzle" xmlns="http://schemas.microsoft.com/VisualStudio/2005/DslTools/DslDefinitionModel">
  <Classes>
    <DomainClass Id="c890d7a7-d80d-4e1a-a15e-72dcb5fff13d" Description="The root in which all other elements are embedded. Appears as a diagram." Name="BoundedContext" DisplayName="Bounded Context" Namespace="FourDeep.Dizzle">
      <Properties>
        <DomainProperty Id="366838d4-37ff-48e6-85b3-1b1bbe6135f4" Description="Description for FourDeep.Dizzle.BoundedContext.Model Namespace" Name="ModelNamespace" DisplayName="Model Namespace">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Notes>Creates an embedding link when an element is dropped onto a model. </Notes>
          <Index>
            <DomainClassMoniker Name="AggregateRoot" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>BoundedContextHasAggregateRoot.Element</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="DomainCommand" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>BoundedContextHasDomainCommands.DomainCommands</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="Property" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>BoundedContextHasProperties.Properties</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="View" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>BoundedContextHasViews.Views</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="DomainEvent" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>BoundedContextHasDomainEvents.DomainEvents</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="Entity" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>BoundedContextHasEntities.Entities</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="682e09f5-f5ae-4aac-b704-7ab29dfc9007" Description="Elements embedded in the model. Appear as boxes on the diagram." Name="AggregateRoot" DisplayName="Aggregate Root" Namespace="FourDeep.Dizzle">
      <Properties>
        <DomainProperty Id="4fbff4e0-57bb-4d17-a4f9-de059b9e60d7" Description="Description for FourDeep.Dizzle.AggregateRoot.Name" Name="Name" DisplayName="Name" DefaultValue="" IsElementName="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="fc29983f-a6c0-4e38-ad77-caa2a54aeb8d" Description="Description for FourDeep.Dizzle.AggregateRoot.Description" Name="Description" DisplayName="Description">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="AggregateState" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>AggregateRootHasAggregateState.AggregateState</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="781ccc3a-4c09-454b-9708-25765c6bc834" Description="Description for FourDeep.Dizzle.AggregateState" Name="AggregateState" DisplayName="Aggregate State" Namespace="FourDeep.Dizzle">
      <Properties>
        <DomainProperty Id="9ebc8433-8d48-4d21-a7bf-11ef239157f6" Description="The name of the State object for the Aggregate Root" Name="Name" DisplayName="Name" IsElementName="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="c498d8a1-fef8-477e-bca0-89e25ba983f9" Description="Description for FourDeep.Dizzle.AggregateState.Description" Name="Description" DisplayName="Description">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="Property" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>AggregateStateHasProperties.Properties</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="a845c7e9-af86-4550-82f1-90013eccd64d" Description="Description for FourDeep.Dizzle.DomainCommand" Name="DomainCommand" DisplayName="Domain Command" Namespace="FourDeep.Dizzle">
      <Properties>
        <DomainProperty Id="ae391281-f73d-4686-ad2e-a0999ab9f5a1" Description="Description for FourDeep.Dizzle.DomainCommand.Name" Name="Name" DisplayName="Name" IsElementName="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="bfc2bea1-22f5-4e2f-8794-5d2e75178b1f" Description="Description for FourDeep.Dizzle.DomainCommand.Description" Name="Description" DisplayName="Description">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="Property" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>DomainCommandHasProperties.Properties</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="8b73d986-e441-4e0c-a1af-8bd2c1bf30e3" Description="Description for FourDeep.Dizzle.Property" Name="Property" DisplayName="Property" Namespace="FourDeep.Dizzle">
      <Properties>
        <DomainProperty Id="aa2e82c6-bb99-4ab5-94cb-fab404b84862" Description="Description for FourDeep.Dizzle.Property.Order" Name="Order" DisplayName="Order" DefaultValue="999">
          <Type>
            <ExternalTypeMoniker Name="/System/Int32" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="31a6cb72-fcfb-4b9b-9d39-9a38f2cfa66c" Description="Description for FourDeep.Dizzle.Property.Name" Name="Name" DisplayName="Name" IsElementName="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="3478a9b5-d483-4f96-903e-5d6d0c77e4e5" Description="Description for FourDeep.Dizzle.Property.Type" Name="Type" DisplayName="Type" Kind="CustomStorage">
          <Attributes>
            <ClrAttribute Name="System.ComponentModel.Editor">
              <Parameters>
                <AttributeParameter Value="typeof(PropertyTypeNameEditor), typeof(System.Drawing.Design.UITypeEditor)" />
              </Parameters>
            </ClrAttribute>
          </Attributes>
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="154d9453-ccdf-4038-8526-650574b08408" Description="Description for FourDeep.Dizzle.Property.Namespace" Name="Namespace" DisplayName="Namespace">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="643ca232-59cd-4538-8841-3fbcac4668d7" Description="Description for FourDeep.Dizzle.Property.Description" Name="Description" DisplayName="Description">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="026a87d3-71df-4a49-97ed-3e34e0fb0614" Description="Description for FourDeep.Dizzle.View" Name="View" DisplayName="View" Namespace="FourDeep.Dizzle">
      <Properties>
        <DomainProperty Id="b224bca2-2991-4300-afca-70d0989f59b4" Description="Description for FourDeep.Dizzle.View.Name" Name="Name" DisplayName="Name" IsElementName="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="dd67fe5c-7d49-42c0-9750-937c41336611" Description="Description for FourDeep.Dizzle.View.Description" Name="Description" DisplayName="Description">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="Property" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>ViewHasProperties.Properties</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="DomainEvent" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>ViewHasDomainEvents.DomainEvents</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="3d8133f8-1198-48a3-89ae-947daa4b108f" Description="Description for FourDeep.Dizzle.DomainEvent" Name="DomainEvent" DisplayName="Domain Event" Namespace="FourDeep.Dizzle">
      <Properties>
        <DomainProperty Id="ab39f13d-814c-4dcd-898e-d2c12c0b1327" Description="Description for FourDeep.Dizzle.DomainEvent.Name" Name="Name" DisplayName="Name" IsElementName="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="b2098fa8-f407-4b77-814c-a3400e191185" Description="Description for FourDeep.Dizzle.DomainEvent.Description" Name="Description" DisplayName="Description">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="Property" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>DomainEventHasProperties.Properties</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="4fa0ec8d-a791-4bcb-95b6-28e93a554454" Description="Description for FourDeep.Dizzle.Entity" Name="Entity" DisplayName="Entity" Namespace="FourDeep.Dizzle">
      <Properties>
        <DomainProperty Id="d287c799-ecab-4af0-9661-869c18a0ad19" Description="Description for FourDeep.Dizzle.Entity.Name" Name="Name" DisplayName="Name" IsElementName="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="93f5ac18-467a-4268-b94e-d8218e1a96ab" Description="Description for FourDeep.Dizzle.Entity.Description" Name="Description" DisplayName="Description">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="Property" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>EntityHasProperties.Properties</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
  </Classes>
  <Relationships>
    <DomainRelationship Id="7467fecb-02c5-4afe-836f-c1db1d60cc36" Description="Embedding relationship between the Model and Elements" Name="BoundedContextHasAggregateRoot" DisplayName="Bounded Context Has Aggregate Root" Namespace="FourDeep.Dizzle" IsEmbedding="true">
      <Source>
        <DomainRole Id="40a00cf5-6858-4281-9510-6613a6ba0303" Description="" Name="BoundedContext" DisplayName="Bounded Context" PropertyName="Element" Multiplicity="One" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Element">
          <RolePlayer>
            <DomainClassMoniker Name="BoundedContext" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="51b65111-43d3-40d9-a931-bf04cd0dc574" Description="" Name="Element" DisplayName="Element" PropertyName="BoundedContext" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Bounded Context">
          <RolePlayer>
            <DomainClassMoniker Name="AggregateRoot" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="e8630a90-a682-45c0-b126-549584baef48" Description="Description for FourDeep.Dizzle.AggregateRootHasAggregateState" Name="AggregateRootHasAggregateState" DisplayName="Aggregate Root Has Aggregate State" Namespace="FourDeep.Dizzle" IsEmbedding="true">
      <Source>
        <DomainRole Id="c2544906-e56c-47b5-8b61-bf7105b79556" Description="Description for FourDeep.Dizzle.AggregateRootHasAggregateState.AggregateRoot" Name="AggregateRoot" DisplayName="Aggregate Root" PropertyName="AggregateState" Multiplicity="One" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Aggregate State">
          <RolePlayer>
            <DomainClassMoniker Name="AggregateRoot" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="cd32310c-e483-4810-a3c0-26d8193241be" Description="Description for FourDeep.Dizzle.AggregateRootHasAggregateState.AggregateState" Name="AggregateState" DisplayName="Aggregate State" PropertyName="AggregateRoot" Multiplicity="ZeroOne" PropagatesDelete="true" PropertyDisplayName="Aggregate Root">
          <RolePlayer>
            <DomainClassMoniker Name="AggregateState" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="333ff519-acf9-439b-864a-379b47696798" Description="Description for FourDeep.Dizzle.BoundedContextReferencesAggregateState" Name="BoundedContextReferencesAggregateState" DisplayName="Bounded Context References Aggregate State" Namespace="FourDeep.Dizzle">
      <Source>
        <DomainRole Id="33b93d86-2482-4bde-bc74-3cf6d074ba72" Description="Description for FourDeep.Dizzle.BoundedContextReferencesAggregateState.BoundedContext" Name="BoundedContext" DisplayName="Bounded Context" PropertyName="AggregateState" Multiplicity="ZeroOne" PropertyDisplayName="Aggregate State">
          <RolePlayer>
            <DomainClassMoniker Name="BoundedContext" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="6f2e7fe5-12f2-4d63-908a-f6024e133c56" Description="Description for FourDeep.Dizzle.BoundedContextReferencesAggregateState.AggregateState" Name="AggregateState" DisplayName="Aggregate State" PropertyName="BoundedContext" Multiplicity="One" PropertyDisplayName="Bounded Context">
          <RolePlayer>
            <DomainClassMoniker Name="AggregateState" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="8d40e754-9c71-42d3-a254-93134cbb3e1f" Description="Description for FourDeep.Dizzle.AggregateRootHandlesDomainCommands" Name="AggregateRootHandlesDomainCommands" DisplayName="Aggregate Root Handles Domain Commands" Namespace="FourDeep.Dizzle">
      <Source>
        <DomainRole Id="992fbb19-181d-49bb-8521-f78ef097ee12" Description="Description for FourDeep.Dizzle.AggregateRootHandlesDomainCommands.AggregateRoot" Name="AggregateRoot" DisplayName="Aggregate Root" PropertyName="DomainCommands" PropertyDisplayName="Domain Commands">
          <RolePlayer>
            <DomainClassMoniker Name="AggregateRoot" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="bd4869be-02af-4236-8cc1-d4ae12121c4c" Description="Description for FourDeep.Dizzle.AggregateRootHandlesDomainCommands.DomainCommand" Name="DomainCommand" DisplayName="Domain Command" PropertyName="AggregateRoot" Multiplicity="ZeroOne" PropertyDisplayName="Aggregate Root">
          <RolePlayer>
            <DomainClassMoniker Name="DomainCommand" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="130e8d14-a4fb-4024-b05b-98ea98ebbc3d" Description="Description for FourDeep.Dizzle.BoundedContextHasDomainCommands" Name="BoundedContextHasDomainCommands" DisplayName="Bounded Context Has Domain Commands" Namespace="FourDeep.Dizzle" IsEmbedding="true">
      <Source>
        <DomainRole Id="c59cce0f-413e-46e7-86b2-789dac2b9370" Description="Description for FourDeep.Dizzle.BoundedContextHasDomainCommands.BoundedContext" Name="BoundedContext" DisplayName="Bounded Context" PropertyName="DomainCommands" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Domain Commands">
          <RolePlayer>
            <DomainClassMoniker Name="BoundedContext" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="a6e6476a-1c5a-410d-8651-de2af52dedca" Description="Description for FourDeep.Dizzle.BoundedContextHasDomainCommands.DomainCommand" Name="DomainCommand" DisplayName="Domain Command" PropertyName="BoundedContext" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Bounded Context">
          <RolePlayer>
            <DomainClassMoniker Name="DomainCommand" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="8138328f-eb7c-4e11-bc3c-344acd9c9f03" Description="Description for FourDeep.Dizzle.BoundedContextHasProperties" Name="BoundedContextHasProperties" DisplayName="Bounded Context Has Properties" Namespace="FourDeep.Dizzle" IsEmbedding="true">
      <Source>
        <DomainRole Id="fca40bac-cea9-45b0-8936-f90de8c275cf" Description="Description for FourDeep.Dizzle.BoundedContextHasProperties.BoundedContext" Name="BoundedContext" DisplayName="Bounded Context" PropertyName="Properties" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Properties">
          <RolePlayer>
            <DomainClassMoniker Name="BoundedContext" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="043764c4-af19-4711-9360-521896ac532c" Description="Description for FourDeep.Dizzle.BoundedContextHasProperties.Property" Name="Property" DisplayName="Property" PropertyName="BoundedContext" Multiplicity="ZeroOne" PropagatesDelete="true" PropertyDisplayName="Bounded Context">
          <RolePlayer>
            <DomainClassMoniker Name="Property" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="a79e6efb-a0d5-436f-93a1-5d0e0296e39f" Description="Description for FourDeep.Dizzle.BoundedContextHasViews" Name="BoundedContextHasViews" DisplayName="Bounded Context Has Views" Namespace="FourDeep.Dizzle" IsEmbedding="true">
      <Source>
        <DomainRole Id="21dd7594-2535-45e1-ad45-3bf14db2eea0" Description="Description for FourDeep.Dizzle.BoundedContextHasViews.BoundedContext" Name="BoundedContext" DisplayName="Bounded Context" PropertyName="Views" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Views">
          <RolePlayer>
            <DomainClassMoniker Name="BoundedContext" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="2ec72194-c482-474f-b0e0-580961a0d28c" Description="Description for FourDeep.Dizzle.BoundedContextHasViews.View" Name="View" DisplayName="View" PropertyName="BoundedContext" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Bounded Context">
          <RolePlayer>
            <DomainClassMoniker Name="View" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="f6765c6d-f87c-42c9-a62d-9edf167359a3" Description="Description for FourDeep.Dizzle.BoundedContextHasDomainEvents" Name="BoundedContextHasDomainEvents" DisplayName="Bounded Context Has Domain Events" Namespace="FourDeep.Dizzle" IsEmbedding="true">
      <Source>
        <DomainRole Id="7b412f39-e45d-40fa-86ec-0305b7912637" Description="Description for FourDeep.Dizzle.BoundedContextHasDomainEvents.BoundedContext" Name="BoundedContext" DisplayName="Bounded Context" PropertyName="DomainEvents" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Domain Events">
          <RolePlayer>
            <DomainClassMoniker Name="BoundedContext" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="254d0e56-54cd-42b9-9abc-4d874b5969aa" Description="Description for FourDeep.Dizzle.BoundedContextHasDomainEvents.DomainEvent" Name="DomainEvent" DisplayName="Domain Event" PropertyName="BoundedContext" Multiplicity="ZeroOne" PropagatesDelete="true" PropertyDisplayName="Bounded Context">
          <RolePlayer>
            <DomainClassMoniker Name="DomainEvent" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="63a1587f-533d-4bb3-94eb-016bbcccde7b" Description="Description for FourDeep.Dizzle.AggregateStateSubscribesToDomainEvents" Name="AggregateStateSubscribesToDomainEvents" DisplayName="Aggregate State Subscribes To Domain Events" Namespace="FourDeep.Dizzle">
      <Source>
        <DomainRole Id="ecc16466-08f0-4dcd-a74e-b4f5387db1e4" Description="Description for FourDeep.Dizzle.AggregateStateSubscribesToDomainEvents.AggregateState" Name="AggregateState" DisplayName="Aggregate State" PropertyName="DomainEvents" PropertyDisplayName="Domain Events">
          <RolePlayer>
            <DomainClassMoniker Name="AggregateState" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="fbe50664-7293-4b95-ba09-75a45726bb6e" Description="Description for FourDeep.Dizzle.AggregateStateSubscribesToDomainEvents.DomainEvent" Name="DomainEvent" DisplayName="Domain Event" PropertyName="AggregateStates" PropertyDisplayName="Aggregate States">
          <RolePlayer>
            <DomainClassMoniker Name="DomainEvent" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="892c8d12-a2ff-4faa-bc4d-900865fc136d" Description="Description for FourDeep.Dizzle.AggregateStateHasProperties" Name="AggregateStateHasProperties" DisplayName="Aggregate State Has Properties" Namespace="FourDeep.Dizzle" IsEmbedding="true">
      <Source>
        <DomainRole Id="59863534-d3ef-4ae0-9b57-6e26d73f7494" Description="Description for FourDeep.Dizzle.AggregateStateHasProperties.AggregateState" Name="AggregateState" DisplayName="Aggregate State" PropertyName="Properties" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Properties">
          <RolePlayer>
            <DomainClassMoniker Name="AggregateState" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="dcbd114e-b756-44d5-a840-84061c052f2f" Description="Description for FourDeep.Dizzle.AggregateStateHasProperties.Property" Name="Property" DisplayName="Property" PropertyName="AggregateState" Multiplicity="ZeroOne" PropagatesDelete="true" PropertyDisplayName="Aggregate State">
          <RolePlayer>
            <DomainClassMoniker Name="Property" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="c4731d26-6c67-4aed-804f-8ad9c55dadc4" Description="Description for FourDeep.Dizzle.DomainCommandHasProperties" Name="DomainCommandHasProperties" DisplayName="Domain Command Has Properties" Namespace="FourDeep.Dizzle" IsEmbedding="true">
      <Source>
        <DomainRole Id="28a78bc3-1285-42a4-9c7e-c04f445269cd" Description="Description for FourDeep.Dizzle.DomainCommandHasProperties.DomainCommand" Name="DomainCommand" DisplayName="Domain Command" PropertyName="Properties" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Properties">
          <RolePlayer>
            <DomainClassMoniker Name="DomainCommand" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="1c3cbccd-5170-4657-87b2-257f7b343ee4" Description="Description for FourDeep.Dizzle.DomainCommandHasProperties.Property" Name="Property" DisplayName="Property" PropertyName="DomainCommand" Multiplicity="ZeroOne" PropagatesDelete="true" PropertyDisplayName="Domain Command">
          <RolePlayer>
            <DomainClassMoniker Name="Property" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="d44bf87d-675d-456b-bbad-8e5162b7bbe6" Description="Description for FourDeep.Dizzle.DomainEventHasProperties" Name="DomainEventHasProperties" DisplayName="Domain Event Has Properties" Namespace="FourDeep.Dizzle" IsEmbedding="true">
      <Source>
        <DomainRole Id="9d1e3c0d-4a32-4dfe-9d21-a36ea46fe22f" Description="Description for FourDeep.Dizzle.DomainEventHasProperties.DomainEvent" Name="DomainEvent" DisplayName="Domain Event" PropertyName="Properties" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Properties">
          <RolePlayer>
            <DomainClassMoniker Name="DomainEvent" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="f08e34b9-a61b-4a02-ae92-f04a1ee45f4b" Description="Description for FourDeep.Dizzle.DomainEventHasProperties.Property" Name="Property" DisplayName="Property" PropertyName="DomainEvent" Multiplicity="ZeroOne" PropagatesDelete="true" PropertyDisplayName="Domain Event">
          <RolePlayer>
            <DomainClassMoniker Name="Property" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="f8b9cbbc-fa83-4ea1-a351-4e6f81ebbfd2" Description="Description for FourDeep.Dizzle.EntityHasProperties" Name="EntityHasProperties" DisplayName="Entity Has Properties" Namespace="FourDeep.Dizzle" IsEmbedding="true">
      <Source>
        <DomainRole Id="dd8d8bce-080f-41c4-91be-b15d16bad890" Description="Description for FourDeep.Dizzle.EntityHasProperties.Entity" Name="Entity" DisplayName="Entity" PropertyName="Properties" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Properties">
          <RolePlayer>
            <DomainClassMoniker Name="Entity" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="91bf227c-0301-40ee-a129-7586e0eac236" Description="Description for FourDeep.Dizzle.EntityHasProperties.Property" Name="Property" DisplayName="Property" PropertyName="Entity" Multiplicity="ZeroOne" PropagatesDelete="true" PropertyDisplayName="Entity">
          <RolePlayer>
            <DomainClassMoniker Name="Property" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="63dfc131-ae0a-4aee-9de8-3197a768f29c" Description="Description for FourDeep.Dizzle.BoundedContextHasEntities" Name="BoundedContextHasEntities" DisplayName="Bounded Context Has Entities" Namespace="FourDeep.Dizzle" IsEmbedding="true">
      <Source>
        <DomainRole Id="4723e7b8-30b8-4f13-82dc-c2af80f95d8e" Description="Description for FourDeep.Dizzle.BoundedContextHasEntities.BoundedContext" Name="BoundedContext" DisplayName="Bounded Context" PropertyName="Entities" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Entities">
          <RolePlayer>
            <DomainClassMoniker Name="BoundedContext" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="fa0d9a94-698d-4f2a-827d-d5894a1f3d76" Description="Description for FourDeep.Dizzle.BoundedContextHasEntities.Entity" Name="Entity" DisplayName="Entity" PropertyName="BoundedContext" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Bounded Context">
          <RolePlayer>
            <DomainClassMoniker Name="Entity" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="c36e8e72-628b-44d2-a79b-3bb8517d60c5" Description="Description for FourDeep.Dizzle.ViewHasProperties" Name="ViewHasProperties" DisplayName="View Has Properties" Namespace="FourDeep.Dizzle" IsEmbedding="true">
      <Source>
        <DomainRole Id="e0315ff5-4035-4b5b-9ecf-adc185cb3c24" Description="Description for FourDeep.Dizzle.ViewHasProperties.View" Name="View" DisplayName="View" PropertyName="Properties" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Properties">
          <RolePlayer>
            <DomainClassMoniker Name="View" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="0217b478-2e34-4784-96f3-e7fc30178408" Description="Description for FourDeep.Dizzle.ViewHasProperties.Property" Name="Property" DisplayName="Property" PropertyName="View" Multiplicity="ZeroOne" PropagatesDelete="true" PropertyDisplayName="View">
          <RolePlayer>
            <DomainClassMoniker Name="Property" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="c558513e-0cbc-48c3-a8fc-e40b1f44c61f" Description="Description for FourDeep.Dizzle.ViewHasDomainEvents" Name="ViewHasDomainEvents" DisplayName="View Has Domain Events" Namespace="FourDeep.Dizzle" IsEmbedding="true">
      <Source>
        <DomainRole Id="da4be448-32dc-46bb-b124-af09149b4648" Description="Description for FourDeep.Dizzle.ViewHasDomainEvents.View" Name="View" DisplayName="View" PropertyName="DomainEvents" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Domain Events">
          <RolePlayer>
            <DomainClassMoniker Name="View" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="6e74e517-c4dc-4087-9159-10451d4ab5eb" Description="Description for FourDeep.Dizzle.ViewHasDomainEvents.DomainEvent" Name="DomainEvent" DisplayName="Domain Event" PropertyName="View" Multiplicity="ZeroOne" PropagatesDelete="true" PropertyDisplayName="View">
          <RolePlayer>
            <DomainClassMoniker Name="DomainEvent" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
  </Relationships>
  <Types>
    <ExternalType Name="DateTime" Namespace="System" />
    <ExternalType Name="Int16" Namespace="System" />
    <ExternalType Name="Int32" Namespace="System" />
    <ExternalType Name="Int64" Namespace="System" />
    <ExternalType Name="UInt16" Namespace="System" />
    <ExternalType Name="UInt32" Namespace="System" />
    <ExternalType Name="UInt64" Namespace="System" />
    <ExternalType Name="SByte" Namespace="System" />
    <ExternalType Name="Byte" Namespace="System" />
    <ExternalType Name="Double" Namespace="System" />
    <ExternalType Name="Single" Namespace="System" />
    <ExternalType Name="Guid" Namespace="System" />
    <ExternalType Name="Boolean" Namespace="System" />
    <ExternalType Name="Char" Namespace="System" />
    <ExternalType Name="Owner" Namespace="My.Account" />
    <ExternalType Name="String" Namespace="System" />
    <ExternalType Name="List&lt;NameType&gt;" Namespace="System.Collections.Generic" />
    <ExternalType Name="Color" Namespace="System.Drawing" />
    <ExternalType Name="LinearGradientMode" Namespace="System.Drawing.Drawing2D" />
  </Types>
  <Shapes>
    <GeometryShape Id="758d1b28-58da-40f8-ba04-9012168649ea" Description="Shape used to represent ExampleElements on a Diagram." Name="AggregateRootShape" DisplayName="Aggregate Root Shape" Namespace="FourDeep.Dizzle" GeneratesDoubleDerived="true" FixedTooltipText="Aggregate Root Shape" ExposesTextColor="true" FillColor="BurlyWood" OutlineColor="113, 111, 110" InitialWidth="2" InitialHeight="0.75" OutlineThickness="0.01" ExposesFillColorAsProperty="true" ExposesFillGradientMode="true" Geometry="Rectangle">
      <Notes>The shape has a text decorator used to display the Name property of the mapped ExampleElement.</Notes>
      <Properties>
        <DomainProperty Id="5023b29c-9c34-4c4a-9908-e1d8eb54b8ac" Description="Description for FourDeep.Dizzle.AggregateRootShape.Fill Color" Name="FillColor" DisplayName="Fill Color" Kind="CustomStorage">
          <Type>
            <ExternalTypeMoniker Name="/System.Drawing/Color" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="15aad910-f81a-4ad3-96a7-df75c88e66be" Description="Description for FourDeep.Dizzle.AggregateRootShape.Text Color" Name="TextColor" DisplayName="Text Color" Kind="CustomStorage">
          <Type>
            <ExternalTypeMoniker Name="/System.Drawing/Color" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="aaabb912-7e28-471e-a943-919bc9c0c925" Description="Description for FourDeep.Dizzle.AggregateRootShape.Fill Gradient Mode" Name="FillGradientMode" DisplayName="Fill Gradient Mode" Kind="CustomStorage">
          <Type>
            <ExternalTypeMoniker Name="/System.Drawing.Drawing2D/LinearGradientMode" />
          </Type>
        </DomainProperty>
      </Properties>
      <ShapeHasDecorators Position="InnerTopCenter" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NameDecorator" DisplayName="Name Decorator" DefaultText="NameDecorator" FontStyle="Bold" FontSize="10" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="DescriptionDecorator" DisplayName="Description Decorator" DefaultText="Enter Description Here" />
      </ShapeHasDecorators>
    </GeometryShape>
    <GeometryShape Id="62bc0e2d-26f4-4049-b476-376cec6daf3a" Description="Description for FourDeep.Dizzle.PropertyShape" Name="PropertyShape" DisplayName="Property Shape" Namespace="FourDeep.Dizzle" FixedTooltipText="Property Shape" FillColor="LavenderBlush" InitialHeight="1" OutlineThickness="0.01" Geometry="Rectangle">
      <ShapeHasDecorators Position="InnerTopCenter" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NameDecorator" DisplayName="Name Decorator" DefaultText="NameDecorator" FontStyle="Bold" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="OrderDecorator" DisplayName="Order Decorator" DefaultText="OrderDecorator" FontStyle="Bold" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerBottomCenter" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="TypeDecorator" DisplayName="Type Decorator" DefaultText="TypeDecorator" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerBottomLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NamespaceDecorator" DisplayName="Namespace Decorator" DefaultText="NamespaceDecorator" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="DescriptionDecorator" DisplayName="Description Decorator" DefaultText="DescriptionDecorator" />
      </ShapeHasDecorators>
    </GeometryShape>
    <CompartmentShape Id="582902e9-b999-42a7-81ac-5703a86dc3f2" Description="Description for FourDeep.Dizzle.AggregateStateShape" Name="AggregateStateShape" DisplayName="Aggregate State Shape" Namespace="FourDeep.Dizzle" GeneratesDoubleDerived="true" FixedTooltipText="Aggregate State Shape" TextColor="White" ExposesTextColor="true" FillColor="DarkGreen" InitialHeight="0.5" ExposesFillColorAsProperty="true" ExposesFillGradientMode="true" Geometry="Rectangle">
      <Properties>
        <DomainProperty Id="9d575972-5986-4fca-bd85-f7cc18033db1" Description="Description for FourDeep.Dizzle.AggregateStateShape.Fill Color" Name="FillColor" DisplayName="Fill Color" Kind="CustomStorage">
          <Type>
            <ExternalTypeMoniker Name="/System.Drawing/Color" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="0fa04425-b2be-4b4e-89ba-4d4d37c9fc33" Description="Description for FourDeep.Dizzle.AggregateStateShape.Text Color" Name="TextColor" DisplayName="Text Color" Kind="CustomStorage">
          <Type>
            <ExternalTypeMoniker Name="/System.Drawing/Color" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="74f6aa92-e524-4357-9b2d-8d84dae42106" Description="Description for FourDeep.Dizzle.AggregateStateShape.Fill Gradient Mode" Name="FillGradientMode" DisplayName="Fill Gradient Mode" Kind="CustomStorage">
          <Type>
            <ExternalTypeMoniker Name="/System.Drawing.Drawing2D/LinearGradientMode" />
          </Type>
        </DomainProperty>
      </Properties>
      <ShapeHasDecorators Position="InnerTopCenter" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="StateNameDecorator" DisplayName="State Name Decorator" DefaultText="StateNameDecorator" FontStyle="Bold" FontSize="10" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <ExpandCollapseDecorator Name="ExpandCollapseDecorator" DisplayName="Expand Collapse Decorator" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="DescriptionDecorator" DisplayName="Description Decorator" DefaultText="DescriptionDecorator" />
      </ShapeHasDecorators>
      <Compartment Name="Properties" Title="Properties" />
    </CompartmentShape>
    <CompartmentShape Id="bb9f7b05-677c-4660-be29-f6ad88791a56" Description="Description for FourDeep.Dizzle.DomainCommandShape" Name="DomainCommandShape" DisplayName="Domain Command Shape" Namespace="FourDeep.Dizzle" GeneratesDoubleDerived="true" FixedTooltipText="Domain Command Shape" ExposesTextColor="true" FillColor="DarkKhaki" InitialHeight="0.5" ExposesFillColorAsProperty="true" ExposesFillGradientMode="true" Geometry="Rectangle">
      <Properties>
        <DomainProperty Id="c1036f8d-e275-4617-a998-30f5ce75a2f1" Description="Description for FourDeep.Dizzle.DomainCommandShape.Fill Color" Name="FillColor" DisplayName="Fill Color" Kind="CustomStorage">
          <Type>
            <ExternalTypeMoniker Name="/System.Drawing/Color" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="8a8023f8-3cc1-4b1b-9d9e-0baf8740e97f" Description="Description for FourDeep.Dizzle.DomainCommandShape.Text Color" Name="TextColor" DisplayName="Text Color" Kind="CustomStorage">
          <Type>
            <ExternalTypeMoniker Name="/System.Drawing/Color" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="c89ce964-fc37-4890-a812-7c609744d20d" Description="Description for FourDeep.Dizzle.DomainCommandShape.Fill Gradient Mode" Name="FillGradientMode" DisplayName="Fill Gradient Mode" Kind="CustomStorage">
          <Type>
            <ExternalTypeMoniker Name="/System.Drawing.Drawing2D/LinearGradientMode" />
          </Type>
        </DomainProperty>
      </Properties>
      <ShapeHasDecorators Position="InnerTopCenter" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="CommandNameDecorator" DisplayName="Command Name Decorator" DefaultText="CommandNameDecorator" FontStyle="Bold" FontSize="10" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <ExpandCollapseDecorator Name="ExpandCollapseDecorator" DisplayName="Expand Collapse Decorator" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="DescriptionDecorator" DisplayName="Description Decorator" DefaultText="DescriptionDecorator" />
      </ShapeHasDecorators>
      <Compartment Name="Properties" Title="Properties" />
    </CompartmentShape>
    <CompartmentShape Id="ddec63c6-a0db-4d2f-b70b-4b8e3c25b44f" Description="Description for FourDeep.Dizzle.DomainEventShape" Name="DomainEventShape" DisplayName="Domain Event Shape" Namespace="FourDeep.Dizzle" GeneratesDoubleDerived="true" FixedTooltipText="Domain Event Shape" ExposesTextColor="true" FillColor="SteelBlue" InitialHeight="0.5" ExposesFillColorAsProperty="true" ExposesFillGradientMode="true" Geometry="Rectangle">
      <Properties>
        <DomainProperty Id="618cb9e2-8770-494b-8a76-3df5cf8ae525" Description="Description for FourDeep.Dizzle.DomainEventShape.Fill Color" Name="FillColor" DisplayName="Fill Color" Kind="CustomStorage">
          <Type>
            <ExternalTypeMoniker Name="/System.Drawing/Color" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="0b88b927-ffc5-40e6-9505-17a91c99d737" Description="Description for FourDeep.Dizzle.DomainEventShape.Text Color" Name="TextColor" DisplayName="Text Color" Kind="CustomStorage">
          <Type>
            <ExternalTypeMoniker Name="/System.Drawing/Color" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="ec9d2062-6960-40e0-bb71-820f7260edaa" Description="Description for FourDeep.Dizzle.DomainEventShape.Fill Gradient Mode" Name="FillGradientMode" DisplayName="Fill Gradient Mode" Kind="CustomStorage">
          <Type>
            <ExternalTypeMoniker Name="/System.Drawing.Drawing2D/LinearGradientMode" />
          </Type>
        </DomainProperty>
      </Properties>
      <ShapeHasDecorators Position="InnerTopCenter" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NameDecorator" DisplayName="Name Decorator" DefaultText="NameDecorator" FontStyle="Bold" FontSize="10" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <ExpandCollapseDecorator Name="ExpandCollapseDecorator" DisplayName="Expand Collapse Decorator" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="DescriptionDecorator" DisplayName="Description Decorator" DefaultText="DescriptionDecorator" />
      </ShapeHasDecorators>
      <Compartment Name="Properties" Title="Properties" />
    </CompartmentShape>
    <CompartmentShape Id="493eb44b-7c31-4d86-a247-8bf6e802919d" Description="Description for FourDeep.Dizzle.EntityShape" Name="EntityShape" DisplayName="Entity Shape" Namespace="FourDeep.Dizzle" GeneratesDoubleDerived="true" FixedTooltipText="Entity Shape" ExposesTextColor="true" FillColor="Thistle" InitialHeight="0.5" ExposesFillColorAsProperty="true" ExposesFillGradientMode="true" Geometry="RoundedRectangle">
      <Properties>
        <DomainProperty Id="3d259d30-80d7-4b55-90be-27b90ccc5443" Description="Description for FourDeep.Dizzle.EntityShape.Fill Color" Name="FillColor" DisplayName="Fill Color" Kind="CustomStorage">
          <Type>
            <ExternalTypeMoniker Name="/System.Drawing/Color" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="16667261-8be5-46b6-a316-6ba1b6dc0392" Description="Description for FourDeep.Dizzle.EntityShape.Fill Gradient Mode" Name="FillGradientMode" DisplayName="Fill Gradient Mode" Kind="CustomStorage">
          <Type>
            <ExternalTypeMoniker Name="/System.Drawing.Drawing2D/LinearGradientMode" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="a79194a9-7fcf-4989-8d1c-7ebd0fa7d3cc" Description="Description for FourDeep.Dizzle.EntityShape.Text Color" Name="TextColor" DisplayName="Text Color" Kind="CustomStorage">
          <Type>
            <ExternalTypeMoniker Name="/System.Drawing/Color" />
          </Type>
        </DomainProperty>
      </Properties>
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NameDecorator" DisplayName="Name Decorator" DefaultText="NameDecorator" FontStyle="Bold" FontSize="10" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="DescriptionDecorator" DisplayName="Description Decorator" DefaultText="Enter Description Here" />
      </ShapeHasDecorators>
      <Compartment Name="Properties" Title="Properties" />
    </CompartmentShape>
    <CompartmentShape Id="4c97010c-c138-4ded-ad69-6932c5edfa19" Description="Description for FourDeep.Dizzle.ViewShape" Name="ViewShape" DisplayName="View Shape" Namespace="FourDeep.Dizzle" GeneratesDoubleDerived="true" FixedTooltipText="View Shape" ExposesTextColor="true" FillColor="Orange" InitialHeight="0.5" ExposesFillColorAsProperty="true" ExposesFillGradientMode="true" Geometry="Rectangle">
      <Properties>
        <DomainProperty Id="b7a58ac7-09ed-4dc8-a288-5eb843a49911" Description="Description for FourDeep.Dizzle.ViewShape.Fill Color" Name="FillColor" DisplayName="Fill Color" Kind="CustomStorage">
          <Type>
            <ExternalTypeMoniker Name="/System.Drawing/Color" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="d0088d41-fc55-42b6-82c0-9ace82fd309c" Description="Description for FourDeep.Dizzle.ViewShape.Text Color" Name="TextColor" DisplayName="Text Color" Kind="CustomStorage">
          <Type>
            <ExternalTypeMoniker Name="/System.Drawing/Color" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="2f6b096b-6f7d-45f4-8f91-5585110dc698" Description="Description for FourDeep.Dizzle.ViewShape.Fill Gradient Mode" Name="FillGradientMode" DisplayName="Fill Gradient Mode" Kind="CustomStorage">
          <Type>
            <ExternalTypeMoniker Name="/System.Drawing.Drawing2D/LinearGradientMode" />
          </Type>
        </DomainProperty>
      </Properties>
      <ShapeHasDecorators Position="InnerTopCenter" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NameDecorator" DisplayName="Name Decorator" DefaultText="NameDecorator" FontStyle="Bold" FontSize="10" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <ExpandCollapseDecorator Name="ExpandCollapseDecorator" DisplayName="Expand Collapse Decorator" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="DescriptionDecorator" DisplayName="Description Decorator" DefaultText="DescriptionDecorator" />
      </ShapeHasDecorators>
      <Compartment Name="Properties" Title="Properties" />
      <Compartment Name="Events" Title="Events" />
    </CompartmentShape>
  </Shapes>
  <Connectors>
    <Connector Id="5ef9fd2f-7c64-4e9e-8d67-ed7f4270594c" Description="Connector between the ExampleShapes. Represents ExampleRelationships on the Diagram." Name="CommandConnector" DisplayName="Command Connector" Namespace="FourDeep.Dizzle" FixedTooltipText="Command Connector" Color="113, 111, 110" TargetEndStyle="HollowArrow" Thickness="0.01" />
    <Connector Id="82b8f202-023b-4aa5-90e3-a1da8e36f7a6" Description="Description for FourDeep.Dizzle.AggregateStateConnector" Name="AggregateStateConnector" DisplayName="Aggregate State Connector" Namespace="FourDeep.Dizzle" FixedTooltipText="Aggregate State Connector" Color="RoyalBlue" SourceEndStyle="FilledDiamond" TargetEndStyle="FilledDiamond" Thickness="0.03" />
    <Connector Id="daf75dd2-8584-4f29-9da8-a0c22e4cc523" Description="Description for FourDeep.Dizzle.PropertyConnector" Name="PropertyConnector" DisplayName="Property Connector" Namespace="FourDeep.Dizzle" FixedTooltipText="Property Connector" Thickness="0.01" />
    <Connector Id="1fbd3dc6-5233-4e9e-847b-6153dbba5c13" Description="Description for FourDeep.Dizzle.DomainEventConnector" Name="DomainEventConnector" DisplayName="Domain Event Connector" Namespace="FourDeep.Dizzle" FixedTooltipText="Domain Event Connector" SourceEndStyle="HollowArrow" Thickness="0.01" />
  </Connectors>
  <XmlSerializationBehavior Name="DizzleSerializationBehavior" Namespace="FourDeep.Dizzle">
    <ClassData>
      <XmlClassData TypeName="BoundedContext" MonikerAttributeName="" SerializeId="true" MonikerElementName="boundedContextMoniker" ElementName="boundedContext" MonikerTypeName="BoundedContextMoniker">
        <DomainClassMoniker Name="BoundedContext" />
        <ElementData>
          <XmlRelationshipData RoleElementName="element">
            <DomainRelationshipMoniker Name="BoundedContextHasAggregateRoot" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="aggregateState">
            <DomainRelationshipMoniker Name="BoundedContextReferencesAggregateState" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="domainCommands">
            <DomainRelationshipMoniker Name="BoundedContextHasDomainCommands" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="properties">
            <DomainRelationshipMoniker Name="BoundedContextHasProperties" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="views">
            <DomainRelationshipMoniker Name="BoundedContextHasViews" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="domainEvents">
            <DomainRelationshipMoniker Name="BoundedContextHasDomainEvents" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="entities">
            <DomainRelationshipMoniker Name="BoundedContextHasEntities" />
          </XmlRelationshipData>
          <XmlPropertyData XmlName="modelNamespace">
            <DomainPropertyMoniker Name="BoundedContext/ModelNamespace" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="AggregateRoot" MonikerAttributeName="name" SerializeId="true" MonikerElementName="aggregateRootMoniker" ElementName="aggregateRoot" MonikerTypeName="AggregateRootMoniker">
        <DomainClassMoniker Name="AggregateRoot" />
        <ElementData>
          <XmlPropertyData XmlName="name" IsMonikerKey="true">
            <DomainPropertyMoniker Name="AggregateRoot/Name" />
          </XmlPropertyData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="aggregateState">
            <DomainRelationshipMoniker Name="AggregateRootHasAggregateState" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="domainCommands">
            <DomainRelationshipMoniker Name="AggregateRootHandlesDomainCommands" />
          </XmlRelationshipData>
          <XmlPropertyData XmlName="description">
            <DomainPropertyMoniker Name="AggregateRoot/Description" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="BoundedContextHasAggregateRoot" MonikerAttributeName="" SerializeId="true" MonikerElementName="boundedContextHasAggregateRootMoniker" ElementName="boundedContextHasAggregateRoot" MonikerTypeName="BoundedContextHasAggregateRootMoniker">
        <DomainRelationshipMoniker Name="BoundedContextHasAggregateRoot" />
      </XmlClassData>
      <XmlClassData TypeName="AggregateRootShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="aggregateRootShapeMoniker" ElementName="aggregateRootShape" MonikerTypeName="AggregateRootShapeMoniker">
        <GeometryShapeMoniker Name="AggregateRootShape" />
        <ElementData>
          <XmlPropertyData XmlName="fillColor">
            <DomainPropertyMoniker Name="AggregateRootShape/FillColor" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="textColor">
            <DomainPropertyMoniker Name="AggregateRootShape/TextColor" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="fillGradientMode">
            <DomainPropertyMoniker Name="AggregateRootShape/FillGradientMode" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="CommandConnector" MonikerAttributeName="" SerializeId="true" MonikerElementName="commandConnectorMoniker" ElementName="commandConnector" MonikerTypeName="CommandConnectorMoniker">
        <ConnectorMoniker Name="CommandConnector" />
      </XmlClassData>
      <XmlClassData TypeName="DizzleDiagram" MonikerAttributeName="" SerializeId="true" MonikerElementName="dizzleDiagramMoniker" ElementName="dizzleDiagram" MonikerTypeName="DizzleDiagramMoniker">
        <DiagramMoniker Name="DizzleDiagram" />
      </XmlClassData>
      <XmlClassData TypeName="AggregateState" MonikerAttributeName="" SerializeId="true" MonikerElementName="aggregateStateMoniker" ElementName="aggregateState" MonikerTypeName="AggregateStateMoniker">
        <DomainClassMoniker Name="AggregateState" />
        <ElementData>
          <XmlPropertyData XmlName="name">
            <DomainPropertyMoniker Name="AggregateState/Name" />
          </XmlPropertyData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="domainEvents">
            <DomainRelationshipMoniker Name="AggregateStateSubscribesToDomainEvents" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="properties">
            <DomainRelationshipMoniker Name="AggregateStateHasProperties" />
          </XmlRelationshipData>
          <XmlPropertyData XmlName="description">
            <DomainPropertyMoniker Name="AggregateState/Description" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="AggregateRootHasAggregateState" MonikerAttributeName="" SerializeId="true" MonikerElementName="aggregateRootHasAggregateStateMoniker" ElementName="aggregateRootHasAggregateState" MonikerTypeName="AggregateRootHasAggregateStateMoniker">
        <DomainRelationshipMoniker Name="AggregateRootHasAggregateState" />
      </XmlClassData>
      <XmlClassData TypeName="BoundedContextReferencesAggregateState" MonikerAttributeName="" SerializeId="true" MonikerElementName="boundedContextReferencesAggregateStateMoniker" ElementName="boundedContextReferencesAggregateState" MonikerTypeName="BoundedContextReferencesAggregateStateMoniker">
        <DomainRelationshipMoniker Name="BoundedContextReferencesAggregateState" />
      </XmlClassData>
      <XmlClassData TypeName="DomainCommand" MonikerAttributeName="name" SerializeId="true" MonikerElementName="domainCommandMoniker" ElementName="domainCommand" MonikerTypeName="DomainCommandMoniker">
        <DomainClassMoniker Name="DomainCommand" />
        <ElementData>
          <XmlPropertyData XmlName="name" IsMonikerKey="true">
            <DomainPropertyMoniker Name="DomainCommand/Name" />
          </XmlPropertyData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="properties">
            <DomainRelationshipMoniker Name="DomainCommandHasProperties" />
          </XmlRelationshipData>
          <XmlPropertyData XmlName="description">
            <DomainPropertyMoniker Name="DomainCommand/Description" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="AggregateRootHandlesDomainCommands" MonikerAttributeName="" SerializeId="true" MonikerElementName="aggregateRootHandlesDomainCommandsMoniker" ElementName="aggregateRootHandlesDomainCommands" MonikerTypeName="AggregateRootHandlesDomainCommandsMoniker">
        <DomainRelationshipMoniker Name="AggregateRootHandlesDomainCommands" />
      </XmlClassData>
      <XmlClassData TypeName="BoundedContextHasDomainCommands" MonikerAttributeName="" SerializeId="true" MonikerElementName="boundedContextHasDomainCommandsMoniker" ElementName="boundedContextHasDomainCommands" MonikerTypeName="BoundedContextHasDomainCommandsMoniker">
        <DomainRelationshipMoniker Name="BoundedContextHasDomainCommands" />
      </XmlClassData>
      <XmlClassData TypeName="AggregateStateConnector" MonikerAttributeName="" SerializeId="true" MonikerElementName="aggregateStateConnectorMoniker" ElementName="aggregateStateConnector" MonikerTypeName="AggregateStateConnectorMoniker">
        <ConnectorMoniker Name="AggregateStateConnector" />
      </XmlClassData>
      <XmlClassData TypeName="Property" MonikerAttributeName="" SerializeId="true" MonikerElementName="propertyMoniker" ElementName="property" MonikerTypeName="PropertyMoniker">
        <DomainClassMoniker Name="Property" />
        <ElementData>
          <XmlPropertyData XmlName="order">
            <DomainPropertyMoniker Name="Property/Order" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="name">
            <DomainPropertyMoniker Name="Property/Name" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="type">
            <DomainPropertyMoniker Name="Property/Type" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="namespace">
            <DomainPropertyMoniker Name="Property/Namespace" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="description">
            <DomainPropertyMoniker Name="Property/Description" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="BoundedContextHasProperties" MonikerAttributeName="" SerializeId="true" MonikerElementName="boundedContextHasPropertiesMoniker" ElementName="boundedContextHasProperties" MonikerTypeName="BoundedContextHasPropertiesMoniker">
        <DomainRelationshipMoniker Name="BoundedContextHasProperties" />
      </XmlClassData>
      <XmlClassData TypeName="PropertyShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="propertyShapeMoniker" ElementName="propertyShape" MonikerTypeName="PropertyShapeMoniker">
        <GeometryShapeMoniker Name="PropertyShape" />
      </XmlClassData>
      <XmlClassData TypeName="PropertyConnector" MonikerAttributeName="" SerializeId="true" MonikerElementName="propertyConnectorMoniker" ElementName="propertyConnector" MonikerTypeName="PropertyConnectorMoniker">
        <ConnectorMoniker Name="PropertyConnector" />
      </XmlClassData>
      <XmlClassData TypeName="View" MonikerAttributeName="name" SerializeId="true" MonikerElementName="viewMoniker" ElementName="view" MonikerTypeName="ViewMoniker">
        <DomainClassMoniker Name="View" />
        <ElementData>
          <XmlPropertyData XmlName="name" IsMonikerKey="true">
            <DomainPropertyMoniker Name="View/Name" />
          </XmlPropertyData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="properties">
            <DomainRelationshipMoniker Name="ViewHasProperties" />
          </XmlRelationshipData>
          <XmlPropertyData XmlName="description">
            <DomainPropertyMoniker Name="View/Description" />
          </XmlPropertyData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="domainEvents">
            <DomainRelationshipMoniker Name="ViewHasDomainEvents" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="BoundedContextHasViews" MonikerAttributeName="" SerializeId="true" MonikerElementName="boundedContextHasViewsMoniker" ElementName="boundedContextHasViews" MonikerTypeName="BoundedContextHasViewsMoniker">
        <DomainRelationshipMoniker Name="BoundedContextHasViews" />
      </XmlClassData>
      <XmlClassData TypeName="DomainEvent" MonikerAttributeName="name" SerializeId="true" MonikerElementName="domainEventMoniker" ElementName="domainEvent" MonikerTypeName="DomainEventMoniker">
        <DomainClassMoniker Name="DomainEvent" />
        <ElementData>
          <XmlPropertyData XmlName="name" IsMonikerKey="true">
            <DomainPropertyMoniker Name="DomainEvent/Name" />
          </XmlPropertyData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="properties">
            <DomainRelationshipMoniker Name="DomainEventHasProperties" />
          </XmlRelationshipData>
          <XmlPropertyData XmlName="description">
            <DomainPropertyMoniker Name="DomainEvent/Description" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="BoundedContextHasDomainEvents" MonikerAttributeName="" SerializeId="true" MonikerElementName="boundedContextHasDomainEventsMoniker" ElementName="boundedContextHasDomainEvents" MonikerTypeName="BoundedContextHasDomainEventsMoniker">
        <DomainRelationshipMoniker Name="BoundedContextHasDomainEvents" />
      </XmlClassData>
      <XmlClassData TypeName="AggregateStateSubscribesToDomainEvents" MonikerAttributeName="" SerializeId="true" MonikerElementName="aggregateStateSubscribesToDomainEventsMoniker" ElementName="aggregateStateSubscribesToDomainEvents" MonikerTypeName="AggregateStateSubscribesToDomainEventsMoniker">
        <DomainRelationshipMoniker Name="AggregateStateSubscribesToDomainEvents" />
      </XmlClassData>
      <XmlClassData TypeName="DomainEventConnector" MonikerAttributeName="" SerializeId="true" MonikerElementName="domainEventConnectorMoniker" ElementName="domainEventConnector" MonikerTypeName="DomainEventConnectorMoniker">
        <ConnectorMoniker Name="DomainEventConnector" />
      </XmlClassData>
      <XmlClassData TypeName="AggregateStateShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="aggregateStateShapeMoniker" ElementName="aggregateStateShape" MonikerTypeName="AggregateStateShapeMoniker">
        <CompartmentShapeMoniker Name="AggregateStateShape" />
        <ElementData>
          <XmlPropertyData XmlName="fillColor">
            <DomainPropertyMoniker Name="AggregateStateShape/FillColor" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="textColor">
            <DomainPropertyMoniker Name="AggregateStateShape/TextColor" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="fillGradientMode">
            <DomainPropertyMoniker Name="AggregateStateShape/FillGradientMode" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="AggregateStateHasProperties" MonikerAttributeName="" SerializeId="true" MonikerElementName="aggregateStateHasPropertiesMoniker" ElementName="aggregateStateHasProperties" MonikerTypeName="AggregateStateHasPropertiesMoniker">
        <DomainRelationshipMoniker Name="AggregateStateHasProperties" />
      </XmlClassData>
      <XmlClassData TypeName="DomainCommandHasProperties" MonikerAttributeName="" SerializeId="true" MonikerElementName="domainCommandHasPropertiesMoniker" ElementName="domainCommandHasProperties" MonikerTypeName="DomainCommandHasPropertiesMoniker">
        <DomainRelationshipMoniker Name="DomainCommandHasProperties" />
      </XmlClassData>
      <XmlClassData TypeName="DomainCommandShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="domainCommandShapeMoniker" ElementName="domainCommandShape" MonikerTypeName="DomainCommandShapeMoniker">
        <CompartmentShapeMoniker Name="DomainCommandShape" />
        <ElementData>
          <XmlPropertyData XmlName="fillColor">
            <DomainPropertyMoniker Name="DomainCommandShape/FillColor" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="textColor">
            <DomainPropertyMoniker Name="DomainCommandShape/TextColor" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="fillGradientMode">
            <DomainPropertyMoniker Name="DomainCommandShape/FillGradientMode" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="DomainEventHasProperties" MonikerAttributeName="" SerializeId="true" MonikerElementName="domainEventHasPropertiesMoniker" ElementName="domainEventHasProperties" MonikerTypeName="DomainEventHasPropertiesMoniker">
        <DomainRelationshipMoniker Name="DomainEventHasProperties" />
      </XmlClassData>
      <XmlClassData TypeName="DomainEventShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="domainEventShapeMoniker" ElementName="domainEventShape" MonikerTypeName="DomainEventShapeMoniker">
        <CompartmentShapeMoniker Name="DomainEventShape" />
        <ElementData>
          <XmlPropertyData XmlName="fillColor">
            <DomainPropertyMoniker Name="DomainEventShape/FillColor" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="textColor">
            <DomainPropertyMoniker Name="DomainEventShape/TextColor" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="fillGradientMode">
            <DomainPropertyMoniker Name="DomainEventShape/FillGradientMode" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="Entity" MonikerAttributeName="" SerializeId="true" MonikerElementName="entityMoniker" ElementName="entity" MonikerTypeName="EntityMoniker">
        <DomainClassMoniker Name="Entity" />
        <ElementData>
          <XmlPropertyData XmlName="name">
            <DomainPropertyMoniker Name="Entity/Name" />
          </XmlPropertyData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="properties">
            <DomainRelationshipMoniker Name="EntityHasProperties" />
          </XmlRelationshipData>
          <XmlPropertyData XmlName="description">
            <DomainPropertyMoniker Name="Entity/Description" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="EntityHasProperties" MonikerAttributeName="" SerializeId="true" MonikerElementName="entityHasPropertiesMoniker" ElementName="entityHasProperties" MonikerTypeName="EntityHasPropertiesMoniker">
        <DomainRelationshipMoniker Name="EntityHasProperties" />
      </XmlClassData>
      <XmlClassData TypeName="EntityShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="entityShapeMoniker" ElementName="entityShape" MonikerTypeName="EntityShapeMoniker">
        <CompartmentShapeMoniker Name="EntityShape" />
        <ElementData>
          <XmlPropertyData XmlName="fillColor">
            <DomainPropertyMoniker Name="EntityShape/FillColor" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="fillGradientMode">
            <DomainPropertyMoniker Name="EntityShape/FillGradientMode" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="textColor">
            <DomainPropertyMoniker Name="EntityShape/TextColor" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="BoundedContextHasEntities" MonikerAttributeName="" SerializeId="true" MonikerElementName="boundedContextHasEntitiesMoniker" ElementName="boundedContextHasEntities" MonikerTypeName="BoundedContextHasEntitiesMoniker">
        <DomainRelationshipMoniker Name="BoundedContextHasEntities" />
      </XmlClassData>
      <XmlClassData TypeName="ViewHasProperties" MonikerAttributeName="" SerializeId="true" MonikerElementName="viewHasPropertiesMoniker" ElementName="viewHasProperties" MonikerTypeName="ViewHasPropertiesMoniker">
        <DomainRelationshipMoniker Name="ViewHasProperties" />
      </XmlClassData>
      <XmlClassData TypeName="ViewShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="viewShapeMoniker" ElementName="viewShape" MonikerTypeName="ViewShapeMoniker">
        <CompartmentShapeMoniker Name="ViewShape" />
        <ElementData>
          <XmlPropertyData XmlName="fillColor">
            <DomainPropertyMoniker Name="ViewShape/FillColor" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="textColor">
            <DomainPropertyMoniker Name="ViewShape/TextColor" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="fillGradientMode">
            <DomainPropertyMoniker Name="ViewShape/FillGradientMode" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="ViewHasDomainEvents" MonikerAttributeName="" SerializeId="true" MonikerElementName="viewHasDomainEventsMoniker" ElementName="viewHasDomainEvents" MonikerTypeName="ViewHasDomainEventsMoniker">
        <DomainRelationshipMoniker Name="ViewHasDomainEvents" />
      </XmlClassData>
    </ClassData>
  </XmlSerializationBehavior>
  <ExplorerBehavior Name="DizzleExplorer" />
  <ConnectionBuilders>
    <ConnectionBuilder Name="CommandConnectionBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="AggregateRootHandlesDomainCommands" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="AggregateRoot" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="DomainCommand" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="BoundedContextReferencesAggregateStateBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="BoundedContextReferencesAggregateState" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="BoundedContext" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="AggregateState" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="AggregateRootHandlesDomainCommandsBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="AggregateRootHandlesDomainCommands" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="AggregateRoot" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="DomainCommand" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="AggregateStateRelationshipBuilder" />
    <ConnectionBuilder Name="AggregateStateSubscribesToDomainEventsBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="AggregateStateSubscribesToDomainEvents" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="AggregateState" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="DomainEvent" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
  </ConnectionBuilders>
  <Diagram Id="8b9cbdc0-8eb8-45cb-9306-fe7816dcfca7" Description="Description for FourDeep.Dizzle.DizzleDiagram" Name="DizzleDiagram" DisplayName="Minimal Language Diagram" Namespace="FourDeep.Dizzle">
    <Class>
      <DomainClassMoniker Name="BoundedContext" />
    </Class>
    <ShapeMaps>
      <ShapeMap>
        <DomainClassMoniker Name="AggregateRoot" />
        <ParentElementPath>
          <DomainPath>BoundedContextHasAggregateRoot.BoundedContext/!BoundedContext</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="AggregateRootShape/NameDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="AggregateRoot/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="AggregateRootShape/DescriptionDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="AggregateRoot/Description" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="AggregateRootShape" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="Property" />
        <ParentElementPath>
          <DomainPath>BoundedContextHasProperties.BoundedContext/!BoundedContext</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="PropertyShape/NameDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Property/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="PropertyShape/OrderDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Property/Order" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="PropertyShape/TypeDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Property/Type" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="PropertyShape/NamespaceDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Property/Namespace" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="PropertyShape/DescriptionDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Property/Description" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="PropertyShape" />
      </ShapeMap>
      <CompartmentShapeMap>
        <DomainClassMoniker Name="AggregateState" />
        <ParentElementPath>
          <DomainPath>AggregateRootHasAggregateState.AggregateRoot/!AggregateRoot/BoundedContextHasAggregateRoot.BoundedContext/!BoundedContext</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="AggregateStateShape/StateNameDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="AggregateState/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="AggregateStateShape/DescriptionDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="AggregateState/Description" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <CompartmentShapeMoniker Name="AggregateStateShape" />
        <CompartmentMap UsesCustomFilter="true" DisplaysCustomString="true">
          <CompartmentMoniker Name="AggregateStateShape/Properties" />
          <ElementsDisplayed>
            <DomainPath>AggregateStateHasProperties.Properties/!Property</DomainPath>
          </ElementsDisplayed>
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Property/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </CompartmentMap>
      </CompartmentShapeMap>
      <CompartmentShapeMap>
        <DomainClassMoniker Name="DomainCommand" />
        <ParentElementPath>
          <DomainPath>BoundedContextHasDomainCommands.BoundedContext/!BoundedContext</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="DomainCommandShape/CommandNameDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="DomainCommand/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="DomainCommandShape/DescriptionDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="DomainCommand/Description" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <CompartmentShapeMoniker Name="DomainCommandShape" />
        <CompartmentMap UsesCustomFilter="true" DisplaysCustomString="true">
          <CompartmentMoniker Name="DomainCommandShape/Properties" />
          <ElementsDisplayed>
            <DomainPath>DomainCommandHasProperties.Properties/!Property</DomainPath>
          </ElementsDisplayed>
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Property/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </CompartmentMap>
      </CompartmentShapeMap>
      <CompartmentShapeMap>
        <DomainClassMoniker Name="DomainEvent" />
        <ParentElementPath>
          <DomainPath>BoundedContextHasDomainEvents.BoundedContext/!BoundedContext</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="DomainEventShape/NameDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="DomainEvent/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="DomainEventShape/DescriptionDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="DomainEvent/Description" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <CompartmentShapeMoniker Name="DomainEventShape" />
        <CompartmentMap UsesCustomFilter="true" DisplaysCustomString="true">
          <CompartmentMoniker Name="DomainEventShape/Properties" />
          <ElementsDisplayed>
            <DomainPath>DomainEventHasProperties.Properties/!Property</DomainPath>
          </ElementsDisplayed>
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Property/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </CompartmentMap>
      </CompartmentShapeMap>
      <CompartmentShapeMap>
        <DomainClassMoniker Name="Entity" />
        <ParentElementPath>
          <DomainPath>BoundedContextHasEntities.BoundedContext/!BoundedContext</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="EntityShape/NameDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Entity/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="EntityShape/DescriptionDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Entity/Description" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <CompartmentShapeMoniker Name="EntityShape" />
        <CompartmentMap UsesCustomFilter="true" DisplaysCustomString="true">
          <CompartmentMoniker Name="EntityShape/Properties" />
          <ElementsDisplayed>
            <DomainPath>EntityHasProperties.Properties/!Property</DomainPath>
          </ElementsDisplayed>
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Property/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </CompartmentMap>
      </CompartmentShapeMap>
      <CompartmentShapeMap>
        <DomainClassMoniker Name="View" />
        <ParentElementPath>
          <DomainPath>BoundedContextHasViews.BoundedContext/!BoundedContext</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="ViewShape/NameDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="View/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="ViewShape/DescriptionDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="View/Description" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <CompartmentShapeMoniker Name="ViewShape" />
        <CompartmentMap UsesCustomFilter="true" DisplaysCustomString="true">
          <CompartmentMoniker Name="ViewShape/Properties" />
          <ElementsDisplayed>
            <DomainPath>ViewHasProperties.Properties/!Property</DomainPath>
          </ElementsDisplayed>
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Property/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </CompartmentMap>
        <CompartmentMap>
          <CompartmentMoniker Name="ViewShape/Events" />
          <ElementsDisplayed>
            <DomainPath>ViewHasDomainEvents.DomainEvents/!DomainEvent</DomainPath>
          </ElementsDisplayed>
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="DomainEvent/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </CompartmentMap>
      </CompartmentShapeMap>
    </ShapeMaps>
    <ConnectorMaps>
      <ConnectorMap>
        <ConnectorMoniker Name="CommandConnector" />
        <DomainRelationshipMoniker Name="AggregateRootHandlesDomainCommands" />
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="AggregateStateConnector" />
        <DomainRelationshipMoniker Name="AggregateRootHasAggregateState" />
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="DomainEventConnector" />
        <DomainRelationshipMoniker Name="AggregateStateSubscribesToDomainEvents" />
      </ConnectorMap>
    </ConnectorMaps>
  </Diagram>
  <Designer CopyPasteGeneration="CopyPasteOnly" FileExtension="4dizzle" Icon="C:\Users\darylmer\Documents\Visual Studio 2010\Projects\Tools\4Dizzle\Resources\File.ico" EditorGuid="0590481e-b24e-4558-a52b-29fbdc780033">
    <RootClass>
      <DomainClassMoniker Name="BoundedContext" />
    </RootClass>
    <XmlSerializationDefinition CustomPostLoad="false">
      <XmlSerializationBehaviorMoniker Name="DizzleSerializationBehavior" />
    </XmlSerializationDefinition>
    <ToolboxTab TabText="Dizzle">
      <ElementTool Name="AggregateRoot" ToolboxIcon="resources\exampleshapetoolbitmap.bmp" Caption="AggregateRoot" Tooltip="Create an AggregateRoot" HelpKeyword="CreateExampleClassF1Keyword">
        <DomainClassMoniker Name="AggregateRoot" />
      </ElementTool>
      <ConnectionTool Name="CommandRelationship" ToolboxIcon="Resources\ExampleConnectorToolBitmap.bmp" Caption="CommandRelationship" Tooltip="Command Relationship" HelpKeyword="CommandRelationship" SourceCursorIcon="Resources\ConnectorSourceSearch.cur" TargetCursorIcon="Resources\ConnectorTargetSearch.cur">
        <ConnectionBuilderMoniker Name="Dizzle/CommandConnectionBuilder" />
      </ConnectionTool>
      <ElementTool Name="AggregateState" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="AggregateState" Tooltip="Aggregate State" HelpKeyword="AggregateState">
        <DomainClassMoniker Name="AggregateState" />
      </ElementTool>
      <ElementTool Name="DomainCommand" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="DomainCommand" Tooltip="Domain Command" HelpKeyword="DomainCommand">
        <DomainClassMoniker Name="DomainCommand" />
      </ElementTool>
      <ConnectionTool Name="AggregateStateRelationship" ToolboxIcon="Resources\ExampleConnectorToolBitmap.bmp" Caption="AggregateStateRelationship" Tooltip="Aggregate State Relationship" HelpKeyword="AggregateStateRelationship" SourceCursorIcon="Resources\ConnectorSourceSearch.cur" TargetCursorIcon="Resources\ConnectorTargetSearch.cur">
        <ConnectionBuilderMoniker Name="Dizzle/AggregateStateRelationshipBuilder" />
      </ConnectionTool>
      <ElementTool Name="Property" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="Property" Tooltip="Property" HelpKeyword="Property">
        <DomainClassMoniker Name="Property" />
      </ElementTool>
      <ElementTool Name="DomainEvent" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="DomainEvent" Tooltip="Domain Event" HelpKeyword="DomainEvent">
        <DomainClassMoniker Name="DomainEvent" />
      </ElementTool>
      <ConnectionTool Name="EventRelationship" ToolboxIcon="Resources\ExampleConnectorToolBitmap.bmp" Caption="EventRelationship" Tooltip="Event Relationship" HelpKeyword="EventRelationship" SourceCursorIcon="Resources\ConnectorSourceSearch.cur" TargetCursorIcon="Resources\ConnectorTargetSearch.cur">
        <ConnectionBuilderMoniker Name="Dizzle/AggregateStateSubscribesToDomainEventsBuilder" />
      </ConnectionTool>
      <ElementTool Name="View" ToolboxIcon="Resources\view.bmp" Caption="View" Tooltip="View" HelpKeyword="View">
        <DomainClassMoniker Name="View" />
      </ElementTool>
      <ElementTool Name="Entity" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="Entity" Tooltip="Entity" HelpKeyword="Entity">
        <DomainClassMoniker Name="Entity" />
      </ElementTool>
    </ToolboxTab>
    <Validation UsesMenu="false" UsesOpen="false" UsesSave="false" UsesLoad="false" />
    <DiagramMoniker Name="DizzleDiagram" />
  </Designer>
  <Explorer ExplorerGuid="5144e67c-c7f4-4583-b3dc-97eb7b190cae" Title="Dizzle Explorer">
    <ExplorerBehaviorMoniker Name="Dizzle/DizzleExplorer" />
  </Explorer>
</Dsl>