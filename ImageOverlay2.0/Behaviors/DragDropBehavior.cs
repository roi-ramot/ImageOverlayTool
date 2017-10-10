using System.Windows;
using System.Windows.Interactivity;

namespace ImageOverlay2._0.Behaviors
{
    public class DragDropBehavior: Behavior<Window>
    {
        protected override void OnAttached()
        {
            AssociatedObject.Drop += OnDrop;
            AssociatedObject.AllowDrop = true;
            base.OnAttached();
        }

        public static readonly DependencyProperty DataProperty = DependencyProperty.Register(
            "Data", typeof (object), typeof (DragDropBehavior), new PropertyMetadata(default(object)));

        public object Data
        {
            get { return (object) GetValue(DataProperty); }
            set { SetValue(DataProperty, value); }
        }
        private void OnDrop(object sender, DragEventArgs e)
        {
           Data = e.Data.GetData(DataFormats.FileDrop, true);
        }
    }
}
