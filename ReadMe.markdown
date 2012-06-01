# Dizzle is a Domain Specific Language meant to be used to help build domain models for Lokad.CQRS.

It is built using the **Visual Studio Visualization and Modeling SDK**.  

The basic idea is that you create a dizzle file/diagram for each _aggregate_ in a domain. You do this by using the visual designer.  This project is the source code for the DSL itself and contains the code generation templates(for the Lokad.Cqrs Sample with a few mods).  As it is right now there is a setup project but it should not be used.  Build creates a vsix file that you can _install_ into Visual Studio.  This does require the **Visual Studio Visualization and Modeling SDK**. To obtain this, visit [Visual Studio Visualization and Modeling SDK](http://www.microsoft.com/en-us/download/details.aspx?id=23025)

For more about Lokad.CQRS, visit [Lokad.CQRS Homepage](http://lokad.github.com/lokad-cqrs/)

**Lokad.CQRS** is a **.NET framework and a set of guidance materials** for _building distributed and scalable applications_ to be **run on-premises or in the cloud**. This project helps to design and develop decoupled systems locally and bring them to the distributed environments later.