using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

public partial class Buscar : System.Web.UI.Page
{
    XmlDocument doc = new XmlDocument();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Buscarbtn_Click(object sender, EventArgs e)
    {
        doc.Load(Server.MapPath("~/") + "/Trabajador.xml");
        XmlNode node = doc.SelectSingleNode("//trabajador[@DNI='" + DropDownList1.SelectedValue + "']");
        if (node != null)
        {
            XmlAttributeCollection a = node.Attributes;
            NOMBRE.Text = a.Item(1).Value;
            EDAD.Text = a.Item(3).Value;
            TELEFONO.Text = a.Item(4).Value;
            NDIA.Text = node.ChildNodes[0].Attributes.Item(0).Value;
            NMES.Text = node.ChildNodes[0].Attributes.Item(1).Value;
            NAÑO.Text = node.ChildNodes[0].Attributes.Item(2).Value;
            IDIA.Text = node.ChildNodes[1].Attributes.Item(0).Value;
            IMES.Text = node.ChildNodes[1].Attributes.Item(1).Value;
            IAÑO.Text = node.ChildNodes[1].Attributes.Item(2).Value;
            //node.ChildNodes[0].InnerText = textBox1.Text;
            //node.ChildNodes[1].InnerText = textBox2.Text;
            //node.ChildNodes[2].InnerText = textBox3.Text;
            //XmlCDataSection notes = doc.CreateCDataSection(textBox4.Text);
            //node.ChildNodes[3].ReplaceChild(notes, node.ChildNodes[3].ChildNodes[0]);
        }
        doc.Save(Server.MapPath("~/") + "/Trabajador.xml");
    }
}