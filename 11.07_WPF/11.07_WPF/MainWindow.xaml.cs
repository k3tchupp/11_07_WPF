using ConsoleAppOrgBig;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace _11._07_WPF
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        List<Organization> szervezetek = new List<Organization>();

        private void Betoltes(string filename)
        {
            foreach (var sor in File.ReadLines(filename).Skip(1)) 
            {
                szervezetek.Add(new Organization(sor.Split(';')));
            }
        }
        
        private void dgAdatok_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (dgAdatok.SelectedItem is Organization)
            {
                Organization valasztottObjektum = dgAdatok.SelectedItem as Organization;
                lblAzonosito.Content = valasztottObjektum.Id.ToString();
                lblWebcim.Content = valasztottObjektum.Website;
                lblLeiras.Content = valasztottObjektum.Description;
            }
            else
            {
                MessageBox.Show("Hiba!");
            }
        }
        public MainWindow()
        {
            InitializeComponent();

            Betoltes("organizations-100000.csv");
            dgAdatok.ItemsSource = szervezetek;

                cbOrszag.ItemsSource = szervezetek.Select(s => s.Country).OrderBy(x => x).Distinct().ToList();
                cbEv.ItemsSource = szervezetek.Select(x=>x.Founded).OrderBy(x => x).Distinct().ToList();
                lblAlkalmazottak.Content = szervezetek.Sum(x => x.EmployeesNumber);

            
        }

        private void cbOrszag_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            var szurtlista = szervezetek.Where(x => x.Country == cbOrszag.SelectedItem.ToString());
            dgAdatok.ItemsSource = szurtlista;
            lblAlkalmazottak.Content = szurtlista.Sum(x => x.EmployeesNumber);
        }

        private void cbEv_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            var szurtlista = szervezetek.Where(x => x.Founded == int.Parse( cbEv.SelectedItem.ToString()));
            dgAdatok.ItemsSource = szurtlista;

            lblAlkalmazottak.Content = szurtlista.Sum(x => x.EmployeesNumber);
        }
    }
}
