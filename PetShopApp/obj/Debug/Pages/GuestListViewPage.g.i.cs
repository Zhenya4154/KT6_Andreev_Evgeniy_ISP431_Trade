﻿#pragma checksum "..\..\..\Pages\GuestListViewPage.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "6324071FABC65BEED763FE725DF708F759F3055BAE63C6F1961AB6DD2961D5E0"
//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан программой.
//     Исполняемая версия:4.0.30319.42000
//
//     Изменения в этом файле могут привести к неправильной работе и будут потеряны в случае
//     повторной генерации кода.
// </auto-generated>
//------------------------------------------------------------------------------

using PetShopApp.Pages;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace PetShopApp.Pages {
    
    
    /// <summary>
    /// GuestListViewPage
    /// </summary>
    public partial class GuestListViewPage : System.Windows.Controls.Page, System.Windows.Markup.IComponentConnector {
        
        
        #line 18 "..\..\..\Pages\GuestListViewPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox SearchProductTextBox;
        
        #line default
        #line hidden
        
        
        #line 25 "..\..\..\Pages\GuestListViewPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox ManufacturerComboBox;
        
        #line default
        #line hidden
        
        
        #line 32 "..\..\..\Pages\GuestListViewPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.RadioButton SortUpRadioButton;
        
        #line default
        #line hidden
        
        
        #line 37 "..\..\..\Pages\GuestListViewPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.RadioButton SortDownRadioButton;
        
        #line default
        #line hidden
        
        
        #line 43 "..\..\..\Pages\GuestListViewPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ListView ProductListView;
        
        #line default
        #line hidden
        
        
        #line 67 "..\..\..\Pages\GuestListViewPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button BackButton;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/PetShopApp;component/pages/guestlistviewpage.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\Pages\GuestListViewPage.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.SearchProductTextBox = ((System.Windows.Controls.TextBox)(target));
            
            #line 21 "..\..\..\Pages\GuestListViewPage.xaml"
            this.SearchProductTextBox.TextChanged += new System.Windows.Controls.TextChangedEventHandler(this.SearchProductTextBox_TextChanged);
            
            #line default
            #line hidden
            return;
            case 2:
            this.ManufacturerComboBox = ((System.Windows.Controls.ComboBox)(target));
            
            #line 27 "..\..\..\Pages\GuestListViewPage.xaml"
            this.ManufacturerComboBox.SelectionChanged += new System.Windows.Controls.SelectionChangedEventHandler(this.ManufacturerComboBox_SelectionChanged);
            
            #line default
            #line hidden
            return;
            case 3:
            this.SortUpRadioButton = ((System.Windows.Controls.RadioButton)(target));
            
            #line 33 "..\..\..\Pages\GuestListViewPage.xaml"
            this.SortUpRadioButton.Checked += new System.Windows.RoutedEventHandler(this.SortUpRadioButton_Checked);
            
            #line default
            #line hidden
            return;
            case 4:
            this.SortDownRadioButton = ((System.Windows.Controls.RadioButton)(target));
            
            #line 38 "..\..\..\Pages\GuestListViewPage.xaml"
            this.SortDownRadioButton.Checked += new System.Windows.RoutedEventHandler(this.SortDownRadioButton_Checked);
            
            #line default
            #line hidden
            return;
            case 5:
            this.ProductListView = ((System.Windows.Controls.ListView)(target));
            return;
            case 6:
            this.BackButton = ((System.Windows.Controls.Button)(target));
            
            #line 67 "..\..\..\Pages\GuestListViewPage.xaml"
            this.BackButton.Click += new System.Windows.RoutedEventHandler(this.BackButton_Click);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

