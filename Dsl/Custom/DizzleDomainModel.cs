using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using DslModeling = global::Microsoft.VisualStudio.Modeling;
using DslDesign = global::Microsoft.VisualStudio.Modeling.Design;
using DslDiagrams = global::Microsoft.VisualStudio.Modeling.Diagrams;

namespace FourDeep.Dizzle
{
    public partial class DizzleDomainModel
	{
        /// <summary>
        /// Returns the non-generated domain model types.
        /// </summary>
        /// <returns>An array of types.</returns>
        protected override Type[] GetCustomDomainModelTypes()
        {
            // Return the rules that should be evaluated for
            // the model

            return new System.Type[] { typeof(PropertyChangeRule)};
        }

    }
}
