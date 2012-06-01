﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DslModeling = global::Microsoft.VisualStudio.Modeling;
using DslDesign = global::Microsoft.VisualStudio.Modeling.Design;
using DslDiagrams = global::Microsoft.VisualStudio.Modeling.Diagrams;

namespace FourDeep.Dizzle
{
    public partial class DomainEventShapeBase
    {
        static string GetDisplayPropertyFromDomainEventForProperties(DslModeling.ModelElement element)
        {
            global::FourDeep.Dizzle.Property root = (global::FourDeep.Dizzle.Property)element;

            return root.Order + " " + root.Name + " : " + (string.IsNullOrEmpty(root.Namespace) ? "" : root.Namespace + ".") + root.Type;
        }

        static global::System.Collections.IList FilterElementsFromDomainEventForProperties(global::System.Collections.IEnumerable elements)
        {
            List<Property> properties = new List<Property>();

            foreach (Property p in elements)
            {
                properties.Add(p);
            }
            return properties.OrderBy(prp => prp.Order).ToList();
        }
    }
}
