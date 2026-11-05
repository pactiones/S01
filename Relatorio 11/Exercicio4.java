import java.util.*;

abstract class Monstro {
    private String nome;

    public Monstro(String nome) {
        this.nome = nome;
    }

    public String getNome() {
        return nome;
    }

    public abstract String receita();
}

class Slime extends Monstro {
    public Slime(String nome) {
        super(nome);
    }

    @Override
    public String receita() {
        return "Cozinhar para virar geleia de slime";
    }
}

class Mandragora extends Monstro {
    public Mandragora(String nome) {
        super(nome);
    }

    @Override
    public String receita() {
        return "Retirar a raíz para fazer o antídoto. Mas cuidado com os gritos";
    }
}

class Panela {
    private String material;

    public Panela(String material) {
        this.material = material;
    }

    public String getMaterial() {
        return material;
    }
}

class Cozinheiro {
    private String nome;
    private Panela panela;
    private ArrayList<Monstro> ingredientes;

    public Cozinheiro(String nome, String materialDaPanela) {
        this.nome = nome;
        this.panela = new Panela(materialDaPanela);
        this.ingredientes = new ArrayList<>();
    }

    public void adicionarIngrediente(Monstro monstro) {
        ingredientes.add(monstro);
    }

    public void servirBanquete() {
        System.out.println("Cozinheiro: " + nome + " | Panela feita de: " + panela.getMaterial());
        for (Monstro monstro : ingredientes) {
            System.out.println("Monstro: " + monstro.getNome() + " | Receita: " + monstro.receita());
        }
    }
}

public class Main {
    public static void main(String[] args) {

        Monstro slime = new Slime("Slime");
        Monstro mandragora = new Mandragora("Mandragora Barulhenta");

        Cozinheiro cozinheiro = new Cozinheiro("Jacan", "Ferro do MasterChef");

        cozinheiro.adicionarIngrediente(slime);
        cozinheiro.adicionarIngrediente(mandragora);

        cozinheiro.servirBanquete();
    }
}


// EXPLICACAO DO TOPICO 6:
// Composição: A Panela pertence exclusivamente ao Cozinheiro e sua existência depende dele (nascem juntos).
//
// Agregação: Se o Cozinheiro deixar de existir, os objetos Monstro continuam existindo de forma independente.
