using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class Emprestimo
    {
        #region Propriedades

        public int  Id { get; set; }
        public string   Descricao { get; set; }
        public string Valor { get; set; }
        public string   Data_Emprestimo { get; set; }
        public string Juros { get; set; }
        public string Parcela { get; set; }

        public Cidade Cidade { get; set; }

        #endregion
    }
}
