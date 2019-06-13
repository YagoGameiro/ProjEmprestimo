using Data;
using Model;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjEmprestimo
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ReloadGrid();

            if (!IsPostBack)
                LoadCboCidade();
        }

        protected void btn_salvar_Click(object sender, EventArgs e)
        {
            Emprestimo emprestimo = new Emprestimo()
            {
                Descricao = txt_desc.Text,
                Valor = txt_valor.Text,
                Data_Emprestimo = Convert.ToString(DateTime.Now),
                Juros = txt_juros.Text,
                Parcela  = txt_parc.Text,
                Cidade = new Cidade() { Id = int.Parse(cboCidade.SelectedValue.ToString()) }
            };

            if (new EmprestimoDB().Insert(emprestimo))
            {
                txt_msg.Text = "Registro inserido!";
                txt_msg.ForeColor = Color.Blue;
                ReloadGrid();
            }
            else
            {
                txt_msg.Text = "Erro ao inserir registro!";
                txt_msg.ForeColor = Color.Red;
            }
        }

        private void ReloadGrid()
        {
            grid.DataSource = new EmprestimoDB().All();
            grid.DataBind();
        }

        private void LoadCboCidade()
        {
            cboCidade.DataSource = new CidadeDB().All();
            cboCidade.DataTextField = "Descricao";
            cboCidade.DataValueField = "Id";
            cboCidade.DataBind();

        }
    }
}