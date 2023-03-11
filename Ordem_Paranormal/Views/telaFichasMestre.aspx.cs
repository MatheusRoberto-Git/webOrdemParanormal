using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace Ordem_Paranormal.Views
{
    public partial class telaFichasMestre : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {                
                if (Session["OrigemSelecionada"] != null)
                {                    
                    txtOrigem.Value = Session["OrigemSelecionada"].ToString();
                    Session.Remove("OrigemSelecionada");
                }

                if (Session["ClasseSelecionada"] != null)
                {
                    txtClasse.Value = Session["ClasseSelecionada"].ToString();
                    Session.Remove("ClasseSelecionada");
                }
            }
        }
    }
}