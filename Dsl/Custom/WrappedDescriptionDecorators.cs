using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using DslModeling = global::Microsoft.VisualStudio.Modeling;
using DslDesign = global::Microsoft.VisualStudio.Modeling.Design;
using DslDiagrams = global::Microsoft.VisualStudio.Modeling.Diagrams;
using Microsoft.VisualStudio.Modeling.Diagrams;

namespace FourDeep.Dizzle
{
    partial class AggregateRootShape
    {
        // The class is double-derived so that we can override this method.
        // Called once for each class.

        protected override void InitializeDecorators(IList<ShapeField> shapeFields, IList<Decorator> decorators)
        {
            // Set up the decorators defined in the DSL Definition:
            base.InitializeDecorators(shapeFields, decorators);

            // Look up the text decorator, which is called "Comment".
            TextField descriptionField = (TextField)ShapeElement.FindShapeField(shapeFields, "DescriptionDecorator");
            if (descriptionField != null)
            {

                // This sets the wrapping behavior, but we need a couple of other things too:
                descriptionField.DefaultMultipleLine = true;

                // Autosize is incompatible with multiple line:
                descriptionField.DefaultAutoSize = false;

                // Need to anchor the field sides to the parent box to get sensible size:
                descriptionField.AnchoringBehavior.Clear();
                descriptionField.AnchoringBehavior.SetLeftAnchor(AnchoringBehavior.Edge.Left, 0.01);
                descriptionField.AnchoringBehavior.SetRightAnchor(AnchoringBehavior.Edge.Right, 0.01);
                descriptionField.AnchoringBehavior.SetTopAnchor(AnchoringBehavior.Edge.Top, 0.01);
                descriptionField.AnchoringBehavior.SetBottomAnchor(AnchoringBehavior.Edge.Bottom, 0.01);
            }

            // Note that this method is called just once per class.
            // commentField is a field definition, attached to the class, not instances.
        }
    }

    partial class EntityShape
    {
        // The class is double-derived so that we can override this method.
        // Called once for each class.
        protected override void InitializeDecorators(IList<ShapeField> shapeFields, IList<Decorator> decorators)
        {
            // Set up the decorators defined in the DSL Definition:
            base.InitializeDecorators(shapeFields, decorators);

            // Look up the text decorator, which is called "Comment".
            TextField descriptionField = (TextField)decorators.Single(tmp => tmp.Field.Name.Equals("DescriptionDecorator")).Field;

            if (descriptionField != null)
            {

                // This sets the wrapping behavior, but we need a couple of other things too:
                descriptionField.DefaultMultipleLine = true;

                // Autosize is incompatible with multiple line:
                descriptionField.DefaultAutoSize = false;

                // Need to anchor the field sides to the parent box to get sensible size:
                descriptionField.AnchoringBehavior.Clear();
                descriptionField.AnchoringBehavior.SetLeftAnchor(AnchoringBehavior.Edge.Left, 0.05);
                descriptionField.AnchoringBehavior.SetRightAnchor(AnchoringBehavior.Edge.Right, 0.05);
                descriptionField.AnchoringBehavior.SetBottomAnchor(AnchoringBehavior.Edge.Top, -0.4);
                descriptionField.AnchoringBehavior.SetTopAnchor(AnchoringBehavior.Edge.Top, 0.4);
                
            }

            // Note that this method is called just once per class.
            // commentField is a field definition, attached to the class, not instances.
        }
    }

    partial class DomainCommandShape
    {
        // The class is double-derived so that we can override this method.
        // Called once for each class.
        protected override void InitializeDecorators(IList<ShapeField> shapeFields, IList<Decorator> decorators)
        {
            // Set up the decorators defined in the DSL Definition:
            base.InitializeDecorators(shapeFields, decorators);

            // Look up the text decorator, which is called "Comment".
            TextField descriptionField = (TextField)decorators.Single(tmp => tmp.Field.Name.Equals("DescriptionDecorator")).Field;

            if (descriptionField != null)
            {

                // This sets the wrapping behavior, but we need a couple of other things too:
                descriptionField.DefaultMultipleLine = true;

                // Autosize is incompatible with multiple line:
                descriptionField.DefaultAutoSize = false;

                // Need to anchor the field sides to the parent box to get sensible size:
                descriptionField.AnchoringBehavior.Clear();
                descriptionField.AnchoringBehavior.SetLeftAnchor(AnchoringBehavior.Edge.Left, 0.05);
                descriptionField.AnchoringBehavior.SetRightAnchor(AnchoringBehavior.Edge.Right, 0.05);
                descriptionField.AnchoringBehavior.SetBottomAnchor(AnchoringBehavior.Edge.Top, -0.4);
                descriptionField.AnchoringBehavior.SetTopAnchor(AnchoringBehavior.Edge.Top, 0.4);

            }

            // Note that this method is called just once per class.
            // commentField is a field definition, attached to the class, not instances.
        }
    }

    partial class DomainEventShape
    {
        // The class is double-derived so that we can override this method.
        // Called once for each class.
        protected override void InitializeDecorators(IList<ShapeField> shapeFields, IList<Decorator> decorators)
        {
            // Set up the decorators defined in the DSL Definition:
            base.InitializeDecorators(shapeFields, decorators);

            // Look up the text decorator, which is called "Comment".
            TextField descriptionField = (TextField)decorators.Single(tmp => tmp.Field.Name.Equals("DescriptionDecorator")).Field;

            if (descriptionField != null)
            {

                // This sets the wrapping behavior, but we need a couple of other things too:
                descriptionField.DefaultMultipleLine = true;

                // Autosize is incompatible with multiple line:
                descriptionField.DefaultAutoSize = false;

                // Need to anchor the field sides to the parent box to get sensible size:
                descriptionField.AnchoringBehavior.Clear();
                descriptionField.AnchoringBehavior.SetLeftAnchor(AnchoringBehavior.Edge.Left, 0.05);
                descriptionField.AnchoringBehavior.SetRightAnchor(AnchoringBehavior.Edge.Right, 0.05);
                descriptionField.AnchoringBehavior.SetBottomAnchor(AnchoringBehavior.Edge.Top, -0.4);
                descriptionField.AnchoringBehavior.SetTopAnchor(AnchoringBehavior.Edge.Top, 0.4);

            }

            // Note that this method is called just once per class.
            // commentField is a field definition, attached to the class, not instances.
        }
    }

    partial class AggregateStateShape 
    {
        // The class is double-derived so that we can override this method.
        // Called once for each class.
        protected override void InitializeDecorators(IList<ShapeField> shapeFields, IList<Decorator> decorators)
        {
            // Set up the decorators defined in the DSL Definition:
            base.InitializeDecorators(shapeFields, decorators);
            

            // Look up the text decorator, which is called "Comment".
            TextField descriptionField = (TextField)decorators.Single(tmp => tmp.Field.Name.Equals("DescriptionDecorator")).Field;

            if (descriptionField != null)
            {

                // This sets the wrapping behavior, but we need a couple of other things too:
                descriptionField.DefaultMultipleLine = true;

                // Autosize is incompatible with multiple line:
                descriptionField.DefaultAutoSize = false;

                // Need to anchor the field sides to the parent box to get sensible size:
                descriptionField.AnchoringBehavior.Clear();
                descriptionField.AnchoringBehavior.SetLeftAnchor(AnchoringBehavior.Edge.Left, 0.05);
                descriptionField.AnchoringBehavior.SetRightAnchor(AnchoringBehavior.Edge.Right, 0.05);
                descriptionField.AnchoringBehavior.SetBottomAnchor(AnchoringBehavior.Edge.Top, -0.4);
                descriptionField.AnchoringBehavior.SetTopAnchor(AnchoringBehavior.Edge.Top, 0.4);
            }

            // Note that this method is called just once per class.
            // commentField is a field definition, attached to the class, not instances.
        }
    }

    partial class ViewShape
    {
        // The class is double-derived so that we can override this method.
        // Called once for each class.
        protected override void InitializeDecorators(IList<ShapeField> shapeFields, IList<Decorator> decorators)
        {
            // Set up the decorators defined in the DSL Definition:
            base.InitializeDecorators(shapeFields, decorators);

            // Look up the text decorator, which is called "Comment".
            TextField descriptionField = (TextField)decorators.Single(tmp => tmp.Field.Name.Equals("DescriptionDecorator")).Field;

            if (descriptionField != null)
            {

                // This sets the wrapping behavior, but we need a couple of other things too:
                descriptionField.DefaultMultipleLine = true;

                // Autosize is incompatible with multiple line:
                descriptionField.DefaultAutoSize = false;

                // Need to anchor the field sides to the parent box to get sensible size:
                descriptionField.AnchoringBehavior.Clear();
                descriptionField.AnchoringBehavior.SetLeftAnchor(AnchoringBehavior.Edge.Left, 0.05);
                descriptionField.AnchoringBehavior.SetRightAnchor(AnchoringBehavior.Edge.Right, 0.05);
                descriptionField.AnchoringBehavior.SetBottomAnchor(AnchoringBehavior.Edge.Top, -0.4);
                descriptionField.AnchoringBehavior.SetTopAnchor(AnchoringBehavior.Edge.Top, 0.4);

            }

            // Note that this method is called just once per class.
            // commentField is a field definition, attached to the class, not instances.
        }
    }
}
