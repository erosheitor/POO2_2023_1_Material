using Atacado.BD.EF.Database;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AtacadoConsole
{
    public class CidadeTestes : BaseTestes
    {
        public CidadeTestes(AtacadoContext contexto) : base(contexto)
        {
        }

        public override void Imprimir()
        {
            Console.WriteLine("--- Exibindo Cidades ---");
            foreach (Cidade item in context.Cidades)
            {
                Console.WriteLine($"{item.CodigoCidade} - {item.Nome} - {item.CodigoIBGE7} - {item.UF} - {item.CodigoEstado}");
            }
            Console.WriteLine("--------------");
            Console.WriteLine("Fim dos testes");
            Console.WriteLine("Clique <enter> para continuar...");
            Console.ReadLine();
        }
    }
}
