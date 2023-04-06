using Atacado.BD.EF.Database;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AtacadoConsole
{
    public class RegiaoTestes : BaseTestes
    {
        public RegiaoTestes(AtacadoContext contexto) : base(contexto)
        {
        }

        public override void Imprimir()
        {
            Console.WriteLine("--- Exibindo Regiões ---");
            foreach (Regiao item in context.Regioes)
            {
                Console.WriteLine($"{item.CodigoRegiao} - {item.Nome}");
            }
            Console.WriteLine("--------------");
            Console.WriteLine("Fim dos testes");
            Console.WriteLine("Clique <enter> para continuar...");
            Console.ReadLine();
        }
    }
}
