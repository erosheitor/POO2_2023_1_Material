using Atacado.BD.EF.Database;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AtacadoConsole
{
    public class ProdutoTestes : BaseTestes
    {
        public ProdutoTestes(AtacadoContext contexto) : base(contexto)
        {
        }

        public override void Imprimir()
        {
            Console.WriteLine("--- Exibindo Produtos ---");
            foreach (Produto item in this.context.Produtos)
            {
                Console.WriteLine($"{item.Codigo} - {item.CodigoSubcategoria} - {item.Descricao}");
            }
            Console.WriteLine("--- Finalizando Produtos ---");
            Console.ReadLine();

        }
    }
}
