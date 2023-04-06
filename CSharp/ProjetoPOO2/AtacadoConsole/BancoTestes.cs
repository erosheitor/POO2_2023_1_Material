using Atacado.BD.EF.Database;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AtacadoConsole
{
    public class BancoTestes : BaseTestes
    {
        public BancoTestes(AtacadoContext contexto) : base(contexto)
        { }

        public override void Imprimir()
        {
            Console.WriteLine("--- Exibindo Areas de Conhecimento ---");
            foreach (Banco item in context.Bancos)
            {
                Console.WriteLine($"{item.CodigoBanco} - {item.Descricao}");
            }
            Console.WriteLine("--------------");
            Console.WriteLine("Fim dos testes");
            Console.WriteLine("Clique <enter> para continuar...");
            Console.ReadLine();
        }
    }
}
