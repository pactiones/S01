using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;

public class Pokemon
{
    public string Especie { get; set; }
    public int Nivel { get; set; }

    public Pokemon(string especie, int nivel)
    {
        this.Especie = especie;
        this.Nivel = nivel;
    }

    public virtual void Atacar()
    {
        Console.WriteLine($"{this.Especie} (Lv. {this.Nivel}) usou um ataque!");
    }
}

public class TipoPlanta : Pokemon
{
    public TipoPlanta(string especie, int nivel) : base(especie, nivel)
    {
    }

    public override void Atacar()
    {
        Console.WriteLine($"{this.Especie} (Lv. {this.Nivel}) usou chicote de vinha!");
    }
}

public class TipoEletrico : Pokemon
{
    public TipoEletrico(string especie, int nivel) : base(especie, nivel)
    {
    }

    public override void Atacar()
    {
        base.Atacar(); 
        Console.WriteLine($"Em seguida, {this.Especie} usou choque do trovão");
    }
}

public class Program
{
    public static void Main(string[] args)
    {
        Pokemon pNormal = new Pokemon("Snorlax", 10);
        TipoPlanta pPlanta = new TipoPlanta("Bulbasaur", 17);
        TipoEletrico pEletrico = new TipoEletrico("Pikachu", 20);

        List<Pokemon> equipe = new List<Pokemon>();
        equipe.Add(pNormal);
        equipe.Add(pPlanta);
        equipe.Add(pEletrico);

        Console.WriteLine("Batalha Pokemon Iniciada\n");

        foreach (Pokemon p in equipe)
        {
            p.Atacar();
            Console.WriteLine("\n");
        }
    }
}
