using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DslModeling = global::Microsoft.VisualStudio.Modeling;
using DslDesign = global::Microsoft.VisualStudio.Modeling.Design;
using DslDiagrams = global::Microsoft.VisualStudio.Modeling.Diagrams;

namespace FourDeep.Dizzle
{
    /// <summary>
    /// Rule that initiates view fixup when an element that has an associated shape is added to the model. 
    /// </summary>
    
    //internal sealed partial class FixUpDiagram : FixUpDiagramBase
    //{
    //    private static DslModeling::ModelElement GetParentForProperty(Property property)
    //    {
    //        return property.AggregateState;
    //    }
    //}

    public partial class Property
    {
        //List<NameType> _nameTypeListClassParams = new List<NameType>();
        string _value = null;
        public string GetTypeValue()
        {
            return _value;
        }
        public void SetTypeValue(string value)
        {
            if (value != null)
                _value = value;
        } 
    }
}
