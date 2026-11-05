import java.util.*;

interface Sobrenatural {
    void manifestar();
}

class Alienigena implements Sobrenatural {
    private String nome;

    public Alienigena(String nome) {
        this.nome = nome;
    }

    public String getNome() {
        return nome;
    }

    @Override
    public void manifestar() {
        System.out.println("Nome: " + getNome() + " | Comportamento: Abduz coisas");
    }
}

class EspiritoYoukai implements Sobrenatural {
    private String nome;

    public EspiritoYoukai(String nome) {
        this.nome = nome;
    }

    public String getNome() {
        return nome;
    }

    @Override
    public void manifestar() {
        System.out.println("Nome: " + getNome() + " | Comportamento: Comer humanos");
    }
}

class MapaDeAvistamentos {
    private HashMap<String, Sobrenatural> avistamentos;

    public MapaDeAvistamentos() {
        this.avistamentos = new HashMap<>();
    }

    public void registrar(String local, Sobrenatural ser) {
        avistamentos.put(local, ser);
    }

    public void investigar(String local) {
        Sobrenatural ser = avistamentos.get(local);
        if (ser == null) {
            System.out.println("Local: " + local + " | O local está tranquilo.");
        } else {
            System.out.print("Local: " + local + " | ");
            ser.manifestar();
        }
    }
}

public class Main {
    public static void main(String[] args) {

        Alienigena alien = new Alienigena("Alineligena");
        EspiritoYoukai espirito = new EspiritoYoukai("Oni");
        MapaDeAvistamentos mapa = new MapaDeAvistamentos();

        mapa.registrar("Casa abandonada", espirito);
        mapa.registrar("Túnel", alien);

        mapa.investigar("Túnel");
        mapa.investigar("Casa abandonada");
        mapa.investigar("Catedral principal");
    }
}
