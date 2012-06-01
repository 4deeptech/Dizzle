using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.VisualStudio.Modeling;

using DslModeling = global::Microsoft.VisualStudio.Modeling;
using DslDesign = global::Microsoft.VisualStudio.Modeling.Design;
using DslDiagrams = global::Microsoft.VisualStudio.Modeling.Diagrams;

namespace FourDeep.Dizzle
{
    [RuleOn(typeof(Property), FireTime = TimeToFire.TopLevelCommit)]
    //[DslModeling::RuleOn(typeof(global::FourDeep.Dizzle.AggregateStateHasProperties), FireTime = DslModeling::TimeToFire.TopLevelCommit, InitiallyDisabled = true)]
    //[DslModeling::RuleOn(typeof(global::FourDeep.Dizzle.DomainCommandHasProperties), FireTime = DslModeling::TimeToFire.TopLevelCommit, InitiallyDisabled = true)]
    public class PropertyChangeRule : ChangeRule
    {
        #region Public Methods

        
        /// <summary>
        /// Raised when a property of the model element is changed.
        /// </summary>
        /// <param name="e">Event arguments.</param>
        public override void ElementPropertyChanged(
            ElementPropertyChangedEventArgs e)
        {
            // Validations

            if (e == null)
            {
                throw new ArgumentNullException("e");
            }

            // What property is being changed?
            if (e.ModelElement is Property)
            {
                if(e.DomainProperty.Name.Equals("Order"))
                {
                    HandleOrderPropertyChanged(e.ModelElement);
                }
            }
        }

        #endregion

        #region Private Methods

        /// <summary>
        /// Invoked when the Name property of the model element
        /// is changed.
        /// </summary>
        /// <param name="modelElement">Model element being
        /// changed.</param>
        private void HandleOrderPropertyChanged
           (ModelElement modelElement)
        {
            var property = modelElement as Property;
            
            if (property.AggregateState != null)
            {
                global::System.Collections.IEnumerable elements = new DslModeling::ModelElement[] { property.AggregateState };
                UpdateCompartments(elements, typeof(global::FourDeep.Dizzle.AggregateStateShape), "Properties", false);
            }

            if (property.DomainCommand != null)
            {
                global::System.Collections.IEnumerable elements = new DslModeling::ModelElement[] { property.DomainCommand };
                UpdateCompartments(elements, typeof(global::FourDeep.Dizzle.DomainCommandShape), "Properties", false);
            }

            if (property.DomainEvent != null)
            {
                global::System.Collections.IEnumerable elements = new DslModeling::ModelElement[] { property.DomainEvent };
                UpdateCompartments(elements, typeof(global::FourDeep.Dizzle.DomainEventShape), "Properties", false);
            }

            if (property.Entity != null)
            {
                global::System.Collections.IEnumerable elements = new DslModeling::ModelElement[] { property.Entity };
                UpdateCompartments(elements, typeof(global::FourDeep.Dizzle.EntityShape), "Properties", false);
            }

            if (property.View != null)
            {
                global::System.Collections.IEnumerable elements = new DslModeling::ModelElement[] { property.View };
                UpdateCompartments(elements, typeof(global::FourDeep.Dizzle.ViewShape), "Properties", false);
            }
        }

        #endregion

        //#region static DomainPath traversal methods to get the list of compartments to update
        //internal static global::System.Collections.ICollection GetAggregateStateForAggregateStateShapePropertiesFromLastLink(global::FourDeep.Dizzle.AggregateStateHasProperties root)
        //{
        //    // Segment 0
        //    global::FourDeep.Dizzle.AggregateState result = root.AggregateState;
        //    if (result == null) return new DslModeling::ModelElement[0];
        //    return new DslModeling::ModelElement[] { result };
        //}
        //#endregion

        #region helper method to update compartments
        /// <summary>
        /// Updates the compartments for the shapes associated to the given list of model elements
        /// </summary>
        /// <param name="elements">List of model elements</param>
        /// <param name="shapeType">The type of shape that needs updating</param>
        /// <param name="compartmentName">The name of the compartment to update</param>
        /// <param name="repaintOnly">If true, the method will only invalidate the shape for a repaint, without re-initializing the shape.</param>
        internal static void UpdateCompartments(global::System.Collections.IEnumerable elements, global::System.Type shapeType, string compartmentName, bool repaintOnly)
        {
            foreach (DslModeling::ModelElement element in elements)
            {
                DslModeling::LinkedElementCollection<DslDiagrams::PresentationElement> pels = DslDiagrams::PresentationViewsSubject.GetPresentation(element);
                foreach (DslDiagrams::PresentationElement pel in pels)
                {
                    DslDiagrams::CompartmentShape compartmentShape = pel as DslDiagrams::CompartmentShape;
                    if (compartmentShape != null && shapeType.IsAssignableFrom(compartmentShape.GetType()))
                    {
                        if (repaintOnly)
                        {
                            compartmentShape.Invalidate();
                        }
                        else
                        {
                            foreach (DslDiagrams::CompartmentMapping mapping in compartmentShape.GetCompartmentMappings())
                            {
                                if (mapping.CompartmentId == compartmentName)
                                {
                                    mapping.InitializeCompartmentShape(compartmentShape);
                                    break;
                                }
                            }
                        }
                    }
                }
            }
        }
        #endregion


    }
}
