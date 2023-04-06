using Atacado.BD.EF.Database;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AtacadoConsole
{
    public class AreaConhecimentoTestes : BaseTestes
    {
        public AreaConhecimentoTestes(AtacadoContext contexto) : base(contexto)
        {
        }

        public override void Imprimir()
        {
            Console.WriteLine("--- Exibindo Areas de Conhecimento ---");
            foreach (AreaConhecimento item in context.AreasConhecimento)
            {
                Console.WriteLine($"{item.CodigoArea} - {item.Descricao}");
            }
            Console.WriteLine("--------------");
            Console.WriteLine("Fim dos testes");
            Console.WriteLine("Clique <enter> para continuar...");
            Console.ReadLine();
        }
    }
}
