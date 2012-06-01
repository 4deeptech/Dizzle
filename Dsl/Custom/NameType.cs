using System;
using System.Collections.Generic;
using System.Collections;
using System.Linq;
using System.Text;
using System.Windows.Forms.Design;
using System.Drawing.Design;
using System.ComponentModel;
using System.Windows.Forms;
using Microsoft.VisualStudio.Modeling.Design;
using System.Reflection;

namespace FourDeep.Dizzle
{
    [Serializable]
    public class NameType 
    {
        private string _name;
        private string _type; 

        public NameType() 
        { 
    
        } 
         
        public string Name 
        { 
            get 
            { 
            return _name; 
            } 
            set 
            { 
                _name = value; 
            } 
        } 
        
        public string Type 
        { 
            get 
            { 
                return _type; 
            } 
            set 
            { 
                _type = value; 
            } 
        } 
    }

    //public class NameTypeEditor : System.Drawing.Design.UITypeEditor
    //{
    //    public NameTypeEditor(Type t)
    //        : base(t)
    //    {
    //    }

    //    public override object EditValue(System.ComponentModel.ITypeDescriptorContext context, IServiceProvider provider, object value)
    //    {
    //        return base.EditValue(context, provider, value);
    //    }
    //}

    public class PropertyTypeNameEditor : System.Drawing.Design.UITypeEditor
    {
        private IWindowsFormsEditorService _wfes;

        public override UITypeEditorEditStyle GetEditStyle(ITypeDescriptorContext context)
        {
            if (context == null)
            {
                return base.GetEditStyle(context);
            }
            return UITypeEditorEditStyle.DropDown;
        }

        protected void List_Click(object pSender, EventArgs pArgs)
        {
            if (_wfes != null)
            {
                _wfes.CloseDropDown();
            }
        }

        public override object EditValue(
            ITypeDescriptorContext context,
            IServiceProvider provider,
            object value)
        {
            if ((context == null) || (provider == null) || (context.PropertyDescriptor == null))
            {
                return base.EditValue(context, provider, value);
            }

            _wfes = (IWindowsFormsEditorService)provider.GetService(typeof(IWindowsFormsEditorService));
            ListBox listBox = new ListBox();
            listBox.Sorted = true;
            listBox.Click += new EventHandler(List_Click);

            listBox.Items.Add("String");
            listBox.Items.Add("Boolean");
            listBox.Items.Add("Currency");
            listBox.Items.Add("DateTime");
            listBox.Items.Add("Decimal");
            listBox.Items.Add("Double");
            listBox.Items.Add("Int32");
            listBox.Items.Add("Single");
            listBox.Items.Add("Int62");
            listBox.Items.Add("Guid");
            listBox.Items.Add("Object");
            listBox.Items.Add("TimeSpan");

            

            ElementPropertyDescriptor desc = context.PropertyDescriptor as ElementPropertyDescriptor;
            Property currentElement = desc.ModelElement as Property;
            BoundedContext currentModel = currentElement.BoundedContext;
            //IList elements = currentModel.;
            //allows fo stuffing in custom types
            //foreach (ExampleElement element in elements)
            //{
            //    listBox.Items.Add(element.Name);
            //}

            //var q = from t in Assembly.GetAssembly(typeof(string)).GetTypes() where t.IsClass && t.Namespace == "System" select t.Name;
            //foreach (string typeName in q)
            //{
            //    listBox.Items.Add(typeName);
            //}


            listBox.SelectedItem = value;

            _wfes.DropDownControl(listBox);
            return listBox.SelectedItem;
        }

        private DialogResult ShowForm(IServiceProvider provider, Form form)
        {
            IUIService service = (IUIService)provider.GetService(typeof(IUIService));
            if (service != null)
            {
                return service.ShowDialog(form);
            }
            return form.ShowDialog();
        }
    }

    
}
