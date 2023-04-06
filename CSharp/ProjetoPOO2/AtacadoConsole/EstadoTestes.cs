using Atacado.BD.EF.Database;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AtacadoConsole
{
    public class EstadoTestes : BaseTestes
    {
        public EstadoTestes(AtacadoContext contexto) : base(contexto)
        {
        }

        public override void Imprimir()
        {
            Console.WriteLine("--- Exibindo Estados ---");
            foreach (Estado item in context.Estados)
            {
                Console.WriteLine($"{item.CodigoEstado} - {item.Nome} - {item.UF} - {item.CodigoRegiao}");
            }
            Console.WriteLine("--------------");
            Console.WriteLine("Fim dos testes");
            Console.WriteLine("Clique <enter> para continuar...");
            Console.ReadLine();
        }
    }
}
