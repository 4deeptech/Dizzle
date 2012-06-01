using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.VisualStudio.TextTemplating.VSHost;
using FourDeep.Dizzle.CustomCode.CodeGeneration;
using Debugging;

namespace FourDeep.Dizzle
{
    [System.Runtime.InteropServices.Guid("6CEB1406-CB25-445d-BD4B-6D52C72B3EB4")]
    public class CodeGenerator : TemplatedCodeGenerator
    {
        protected override byte[] GenerateCode(string inputFileName, string inputFileContent) 
        {
            // Replace the supplied file contents with the template we want to run 
            inputFileContent = ASCIIEncoding.UTF8.GetString(CodeGenerationResource.AggregateRootCoreTemplate); 
            // Substitute the name of the current model file into the template. 
            FileInfo fi = new FileInfo(inputFileName);
            inputFileContent = inputFileContent.Replace("MyAggregateName.4dizzle", fi.Name); 
            //inputFileContent = inputFileContent.Replace("namespace ShapesTest", "namespace " + FileNamespace); 
            // Now just delegate the rest of the work to the base class 
            byte[] data; 
            data = base.GenerateCode(inputFileName, inputFileContent); 
            byte[] ascii = new byte[data.Length - 3]; 
            Array.Copy(data, 3, ascii, 0, data.Length - 3); 
            return ascii;
        }
    }
}
