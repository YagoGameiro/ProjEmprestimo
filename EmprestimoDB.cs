using Model;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Util;

namespace Data
{
    public class EmprestimoDB
    {
        private Conexao conexao;
        public bool Insert(Emprestimo emprestimo)
        {
            try
            {
                //Query de inclusão de dados
         string sql = string.Format("insert into tb_emprestimo (descricao, valor, data_emprestimo, juros, parcela, idcidade) " +
                    "values ('{0}','{1}','{2}','{3}','{4}','{5}')",
     emprestimo.Descricao, emprestimo.Valor,emprestimo.Data_Emprestimo,emprestimo.Juros,emprestimo.Parcela, emprestimo.Cidade.Id);
                //Abrir conexão para inclusão de informações
                using (conexao = new Conexao())
                {
                    conexao.ExecutaComando(sql);

                }
                return true;
            }
            catch (Exception)
            {
                throw;
                return false;
            }
            
        }

        public List<Emprestimo> All()
        {
            using (conexao = new Conexao())
            {
                var sql = "SELECT E.Id, E.Descricao, E.Valor, E.Data_Emprestimo, E.Juros, E.Parcela, C.Descricao " +
                    "FROM TB_EMPRESTIMO E, TB_CIDADE C WHERE E.IDCIDADE = C.ID";
                var retorno = conexao.ExecutaComandoRetorno(sql);
                return TransformaSQLReaderEmList(retorno);
            }
        }

        private List<Emprestimo> TransformaSQLReaderEmList(SqlDataReader retorno)
        {
            var listPessoa = new List<Emprestimo>();

            while (retorno.Read())
            {
                var item = new Emprestimo()
                {
                    Id = Convert.ToInt32(retorno["Id"]),
                    Descricao = retorno["Descricao"].ToString(),
                    Valor = retorno["Valor"].ToString(),
                    Data_Emprestimo = retorno["Data_Emprestimo"].ToString(),
                    Juros = retorno["Juros"].ToString(),
                    Parcela = retorno["Parcela"].ToString(),
                    Cidade = new Cidade() { Descricao = retorno["Descricao"].ToString() }
                };
                listPessoa.Add(item);
            }
            return listPessoa;
        }
    }
}
