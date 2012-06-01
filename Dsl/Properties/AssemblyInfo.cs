#region Using directives

using System;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Runtime.ConstrainedExecution;

#endregion

//
// General Information about an assembly is controlled through the following 
// set of attributes. Change these attribute values to modify the information
// associated with an assembly.
//
[assembly: AssemblyTitle(@"")]
[assembly: AssemblyDescription(@"")]
[assembly: AssemblyConfiguration("")]
[assembly: AssemblyCompany(@"4Deep Technologies LLC")]
[assembly: AssemblyProduct(@"Dizzle")]
[assembly: AssemblyCopyright("")]
[assembly: AssemblyTrademark("")]
[assembly: AssemblyCulture("")]
[assembly: System.Resources.NeutralResourcesLanguage("en")]

//
// Version information for an assembly consists of the following four values:
//
//      Major Version
//      Minor Version 
//      Build Number
//      Revision
//
// You can specify all the values or you can default the Revision and Build Numbers 
// by using the '*' as shown below:

[assembly: AssemblyVersion(@"1.0.0.0")]
[assembly: ComVisible(false)]
[assembly: CLSCompliant(true)]
[assembly: ReliabilityContract(Consistency.MayCorruptProcess, Cer.None)]

//
// Make the Dsl project internally visible to the DslPackage assembly
//
[assembly: InternalsVisibleTo(@"FourDeep.Dizzle.DslPackage, PublicKey=00240000048000009400000006020000002400005253413100040000010001005563C672B34E4E0053293EFA8417E632E9711B7ABE02BDCD69DCFE3D2681FCE725EE7D5150FD4387F8061F196FD56AAA452DD33E760233C93915E0ABC3387A93F7454FA01290D09EB34F5D962982B4999EB1C083755813052D6F915BCC1B2909925A1F84D79B9CD9A010AF13135902D2CA1B32C62317437B687D25F5BC3BD1E1")]