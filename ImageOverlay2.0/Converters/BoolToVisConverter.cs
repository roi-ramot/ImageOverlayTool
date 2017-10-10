using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Data;

namespace ImageOverlay2._0.Converters
{
    public class BoolToVisConverter:IValueConverter 
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            bool val=false;
            bool param=false;
            bool.TryParse(value.ToString(), out val);
            if (parameter!=null)
            {
                bool.TryParse(parameter.ToString(), out param);
            }
            if (param)
            {
                val = !val;
            }
            return val ? Visibility.Visible : Visibility.Collapsed;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
