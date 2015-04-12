using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

public partial class Ingresar : System.Web.UI.Page
{
    XmlDocument myXmlDocument = new XmlDocument();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void IngresarBTN_Click(object sender, EventArgs e)
    {
        myXmlDocument.Load(Server.MapPath("~/") + "/Trabajador.xml");
        XmlElement trabajador = myXmlDocument.CreateElement("trabajador");
        XmlElement fnacimiento = myXmlDocument.CreateElement("fnacimiento");
        XmlElement fingreso = myXmlDocument.CreateElement("fingreso");
        XmlAttribute dni = myXmlDocument.CreateAttribute("DNI");
        XmlAttribute nombre = myXmlDocument.CreateAttribute("nombre");
        XmlAttribute sexo = myXmlDocument.CreateAttribute("sexo");
        XmlAttribute edad = myXmlDocument.CreateAttribute("edad");
        XmlAttribute telefono = myXmlDocument.CreateAttribute("telefono");
        XmlAttribute ndia = myXmlDocument.CreateAttribute("dia");
        XmlAttribute nmes = myXmlDocument.CreateAttribute("mes");
        XmlAttribute naño = myXmlDocument.CreateAttribute("año");
        XmlAttribute idia = myXmlDocument.CreateAttribute("dia");
        XmlAttribute imes = myXmlDocument.CreateAttribute("mes");
        XmlAttribute iaño = myXmlDocument.CreateAttribute("año");
        dni.Value = DNI.Text;
        nombre.Value = NOMBRE.Text;
        edad.Value = EDAD.Text;
        telefono.Value = TELEFONO.Text;
        sexo.Value = SEXO.SelectedValue;
        ndia.Value = NDIA.Text;
        nmes.Value = NMES.Text;
        naño.Value = NAÑO.Text;
        idia.Value = IDIA.Text;
        imes.Value = IMES.Text;
        iaño.Value = IAÑO.Text;
        trabajador.Attributes.Append(dni);
        trabajador.Attributes.Append(nombre);
        trabajador.Attributes.Append(sexo);
        trabajador.Attributes.Append(edad);
        trabajador.Attributes.Append(telefono);
        fnacimiento.Attributes.Append(ndia);
        fnacimiento.Attributes.Append(nmes);
        fnacimiento.Attributes.Append(naño);
        fingreso.Attributes.Append(idia);
        fingreso.Attributes.Append(imes);
        fingreso.Attributes.Append(iaño);
        trabajador.AppendChild(fnacimiento);
        trabajador.AppendChild(fingreso);
        myXmlDocument.DocumentElement.AppendChild(trabajador);
        myXmlDocument.Save(Server.MapPath("~/") + "/Trabajador.xml");
    }
}