namespace AtacadoConsole;

using Atacado.BD.EF.Database;
public class Program
{
    public static void Main(string[] args)
    {
        using AtacadoContext contexto = new AtacadoContext();
        foreach (Categorium item in contexto.Categoria.ToList())
        {
            Console.WriteLine($"{item.Codigo} - {item.Descricao}");
        }
        Console.ReadLine();
    }
}