using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;

public class CombatenteDeGondor{
	public string Nome {get; private set;}
	public string Povo {get; private set;}
	public string Posto {get; private set;}
	public string Armamento {get; private set;} = "Desarmado";

	public CombatenteDeGondor(string nome, string povo, string posto){
		this.Nome = nome;
		this.Povo = povo;
		this.Posto = posto;
	}

	public void Equipar(string arma){
		this.Armamento = arma;
	}

	public void Apresentarunidade(){
		Console.WriteLine($"Nome: {Nome} | Povo: {Povo} | Posto: {Posto}");

		if(Armamento != "Desarmado"){
			Console.WriteLine($"Armamento: {Armamento}\n");
		}
	}
}

public class Program{
	public static void Main(string[] args){
		CombatenteDeGondor p1 = new CombatenteDeGondor("Knight", "Vazio", "Cavaleiro");
		CombatenteDeGondor p2 = new CombatenteDeGondor("Hornet", "Aranhas", "Tecelã");
		CombatenteDeGondor p3 = new CombatenteDeGondor("Quirrel", "Hallownest", "Assistente da Monomon");

		p1.Equipar("Ferrão puro");
		p2.Equipar("Agulha de aço puro");
		p3.Equipar("Arquivos da professora");

		p1.Apresentarunidade();
		p2.Apresentarunidade();
		p3.Apresentarunidade();

		//p1.Posto = "Luz";
		//HelloWorld.cs(45,6): error CS0272: The property or indexer `CombatenteDeGondor.Posto' cannot be used in this context because the set accessor is inaccessible
		//Deu erro por conta de estar privado.
	}
}
