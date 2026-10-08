using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;

public class EntidadeCosmica
{
    public string Nome { get; set; }
    public string Origem { get; set; } = "Desconhecida";

    public EntidadeCosmica(string nome)
    {
        this.Nome = nome;
    }

    public virtual void Manifestar()
    {
        Console.WriteLine($"Nome: {this.Nome}");
        
        if (this.Origem != "Desconhecida")
        {
            Console.WriteLine($"Origem: {this.Origem}");
        }
    }
}

public class Profundo : EntidadeCosmica
{
    public Profundo(string nome) : base(nome)
    {
    }

    public override void Manifestar()
    {
        Console.WriteLine($"Nome: {this.Nome}");
    }
}

public class MiGo : EntidadeCosmica
{
    public MiGo(string nome) : base(nome)
    {
    }

    public override void Manifestar()
    {
        base.Manifestar();
    }
}

public class Pesquisador
{
    public string Nome { get; set; }
    private List<EntidadeCosmica> _catalogo;

    public Pesquisador(string nome)
    {
        this.Nome = nome;
        this._catalogo = new List<EntidadeCosmica>();
    }

    public void Catalogar(EntidadeCosmica entidade)
    {
        this._catalogo.Add(entidade);
    }

    public void LerCatalogo()
    {
        Console.WriteLine($"Catálogo do Pesquisador {this.Nome} \n");
        
        foreach (EntidadeCosmica entidade in this._catalogo)
        {
            entidade.Manifestar();
        }
    }
}

public class Program
{
    public static void Main(string[] args)
    {
        EntidadeCosmica ser = new EntidadeCosmica("Hollow Knight");
        ser.Origem = "Abismo";

        Profundo monstroAquatico = new Profundo("Vazio");

        MiGo criaturaVoadora = new MiGo("Mãe Mosca");
        criaturaVoadora.Origem = "Hallownest";

        Pesquisador cientista = new Pesquisador("Cornifer");

        cientista.Catalogar(ser);
        cientista.Catalogar(monstroAquatico);
        cientista.Catalogar(criaturaVoadora);

        cientista.LerCatalogo();
    }
}
