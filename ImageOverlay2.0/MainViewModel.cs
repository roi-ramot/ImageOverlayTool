using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Windows;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using Microsoft.Win32;

namespace ImageOverlay2._0
{
    public class MainViewModel : PropoertyChanged
    {
        private ImageSource _image;
        private bool _isAllwaysOnTop;
        private Stretch _strechBeahvior;
        private bool _shouldHideControls;
        private object _dropFile;
        private string _filePath;
        private readonly List<string> _supportedImageFormats;
        private double _column0Width;
        private double _column4Width;
        private double _row0Height;
        private double _row4Height;
        private bool _activateMagnifier;

        public MainViewModel()
        {
            StrechBeahvior=Stretch.Fill;
            IsAllwaysOnTop = true;
            ShouldHideControls = true;
            _supportedImageFormats = new List<string>
            {
                "jpg",
                "png",
                "bmp"
            };
            Row0Height = 200;
            Row4Height = 200;
            Column0Width = 200;
            Column4Width = 200;
        }

        public DelegateCommand ImportImageCommand
        {
            get
            {
                return new DelegateCommand(() =>
                {
                    var openFileDialog = new OpenFileDialog
                    {
                        Filter = "Image files (*.jpg,*.png,*.bmp))|*.jpg;*.png;*.bmp"
                    };
                    var result = openFileDialog.ShowDialog();
                    if (result != null && result.Value)
                    {
                        FilePath = openFileDialog.FileName;
                    }

                });
            }
        }
        public DelegateCommand<Window> CloseAppCommand
        {
            get { return new DelegateCommand<Window>(win => win.Close()); }
        }

        public object DropFile
        {
            get { return _dropFile; }
            set
            {
                
                _dropFile = value;
                var obj = value as string[];
                if (obj!=null)
                {
                    FilePath = obj.First();
                    
                }
            }
        }


        public string FilePath
        {
            get { return _filePath; }
            set
            {
                _filePath = value;
                if (_filePath != null && IsFileTypeIsImage(_filePath))
                {
                    Image = new BitmapImage(new Uri(FilePath));
                }
            }
        }

        private bool IsFileTypeIsImage(string path)
        {
            var extention = Path.GetExtension(path);
            if (extention==null)
            {
                return false;
            }
            var fileType = extention.Replace(".","").ToLower();
            return _supportedImageFormats.Contains(fileType);
        }
        public ImageSource Image
        {
            get { return _image; }
            set
            {
                _image = value;
                OnPropertyChanged();
            }
        }


        public Stretch StrechBeahvior
        {
            get { return _strechBeahvior; }
            set
            {
                _strechBeahvior = value;
                OnPropertyChanged();
            }
        }

        public List<Stretch> StrechBeahviors
        {
            get { return Enum.GetValues(typeof (Stretch)).Cast<Stretch>().ToList(); }
        }

        public bool IsAllwaysOnTop
        {
            get { return _isAllwaysOnTop; }
            set
            {
                _isAllwaysOnTop = value;
                OnPropertyChanged();
            }
        }

        public bool ActivateMagnifier
        {
            get { return _activateMagnifier; }
            set
            {
                _activateMagnifier = value;
                OnPropertyChanged();

            }
        }

        public bool ShouldHideControls
        {
            get { return _shouldHideControls; }
            set
            {
                _shouldHideControls = value;
                OnPropertyChanged();
            }
        }

        public Double Column0Width
        {
            get { return _column0Width; }
            set
            {
                _column0Width = value;
                OnPropertyChanged();
            }
        }
        public Double Column4Width
        {
            get { return _column4Width; }
            set
            {
                _column4Width = value;
                OnPropertyChanged();
            }
        }
        public Double Row0Height
        {
            get { return _row0Height; }
            set
            {
                _row0Height = value;
                OnPropertyChanged();
            }
        }
        public Double Row4Height
        {
            get { return _row4Height; }
            set
            {
                _row4Height = value;
                OnPropertyChanged();
            }
        }

        public DelegateCommand MoveSpliterColumn0RightCommand
        {
            get
            {
                return new DelegateCommand(
                    () =>
                    {
                        Column0Width = Column0Width + 1;
                    });
            }
        }
        public DelegateCommand MoveSpliterColumn0LeftCommand
        {
            get
            {
                return new DelegateCommand(
                    () =>
                    {
                        Column0Width = Column0Width - 1;
                    });
            }
        }
        public DelegateCommand MoveSpliterColumn4RightCommand
        {
            get
            {
                return new DelegateCommand(
                    () =>
                    {
                        Column4Width = Column4Width + 1;
                    });
            }
        }
        public DelegateCommand MoveSpliterColumn4LeftCommand
        {
            get
            {
                return new DelegateCommand(
                    () =>
                    {
                        Column4Width = Column4Width - 1;
                    });
            }
        }
        public DelegateCommand MoveSpliterRow0UpCommand
        {
            get
            {
                return new DelegateCommand(
                    () =>
                    {
                        Row0Height = Row0Height + 1;
                    });
            }
        }
        public DelegateCommand MoveSpliterRow0DownCommand
        {
            get
            {
                return new DelegateCommand(
                    () =>
                    {
                        Row0Height = Row0Height - 1;
                    });
            }
        }

        public DelegateCommand MoveSpliterRow4UpCommand
        {
            get
            {
                return new DelegateCommand(
                    () =>
                    {
                        Row4Height = Row4Height + 1;
                    });
            }
        }
        public DelegateCommand MoveSpliterRow4DownCommand
        {
            get
            {
                return new DelegateCommand(
                    () =>
                    {
                        Row4Height = Row4Height - 1;
                    });
            }
        }
    }
}
