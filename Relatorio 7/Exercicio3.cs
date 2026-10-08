using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;

public class Grimorio
{
    public string FeiticoFavorito { get; set; } = "Nenhum";

    public void Abrir()
    {
        Console.WriteLine($"O grimório foi aberto! Feitiço favorito: {this.FeiticoFavorito}");
    }
}

public class Companheiro
{
    public string Nome { get; set; }
    public string Funcao { get; set; }

    public Companheiro(string nome, string funcao)
    {
        this.Nome = nome;
        this.Funcao = funcao;
    }

    public void Apresentar()
    {
        Console.WriteLine($"- {this.Nome}, {this.Funcao}");
    }
}

public class Maga
{
    public string Nome { get; set; }
    public Grimorio MeuGrimorio { get; set; }
    
    private List<Companheiro> _grupo;

    public Maga(string nome)
    {
        this.Nome = nome;
        this.MeuGrimorio = new Grimorio();
        this._grupo = new List<Companheiro>();
    }

    public void Recrutar(Companheiro companheiroNovo)
    {
        this._grupo.Add(companheiroNovo);
    }

    public void MostrarGrupo()
    {
        Console.WriteLine($"\nGrupo de {this.Nome}:");
        foreach (Companheiro c in this._grupo)
        {
            c.Apresentar();
        }
        Console.WriteLine();
    }
}

public class Program
{
    public static void Main(string[] args)
    {
        Companheiro C1 = new Companheiro("Ron", "Auror");
        Companheiro C2 = new Companheiro("Hermione", "Ministra da magia");

        Maga Harry = new Maga("Harry");

        Harry.Recrutar(C1);
        Harry.Recrutar(C2);

        Harry.MeuGrimorio.FeiticoFavorito = "Expelliarmus";

        Harry.MostrarGrupo();
        Harry.MeuGrimorio.Abrir();

		// Composição: Harry cria e mantém seu próprio grimório, tratado como parte dela.
		// Agregação: Harry reúne companheiros que foram criados independentemente dela.
    }
}
