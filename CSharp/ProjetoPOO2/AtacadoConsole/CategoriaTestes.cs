using Atacado.BD.EF.Database;

namespace AtacadoConsole;

public class CategoriaTestes : BaseTestes
{
    public CategoriaTestes(AtacadoContext contexto) : base(contexto)
    {
    }

    public override void Imprimir()
    {
        Console.WriteLine("--- Exibindo Categorias ---");
        foreach (Categoria item in this.context.Categorias)
        {
            Console.WriteLine($"{item.Codigo} - {item.Descricao}");
        }
        Console.WriteLine("--- Finalizando Categorias ---");
        Console.ReadLine();        
    }
}
