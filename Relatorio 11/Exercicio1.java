abstract class Morador {
    private String nome;

    public Morador(String nome) {
        this.nome = nome;
    }

    public String getNome() {
        return nome;
    }

    public abstract void apresentar();
}

class Mago extends Morador {
    private String feitico;

    public Mago(String nome, String feitico) {
        super(nome);
        this.feitico = feitico;
    }

    @Override
    public void apresentar() {
        System.out.println("Nome: " + getNome() + " | Feitiço: " + feitico);
    }
}

class DemonioDoFogo extends Morador {
    public DemonioDoFogo(String nome) {
        super(nome);
    }

    @Override
    public void apresentar() {
        System.out.println("Nome: " + getNome() + ", faz o castelo andar");
    }
}

public class Main {
    public static void main(String[] args) {
        Morador mago = new Mago("Mago", "Feitiço maneiro");
        Morador demonioDoFogo = new DemonioDoFogo("Demônio do Fogo");

        mago.apresentar();
        demonioDoFogo.apresentar();

        //Morador morador = new Morador("morador");
        //Main.java:48: error: Morador is abstract; cannot be instantiated
    }
}
