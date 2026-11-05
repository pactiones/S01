import java.util.*;

class ItemDoCardapio {
    private String nome;
    private double preco;

    public ItemDoCardapio(String nome, double preco) {
        this.nome = nome;
        this.preco = preco;
    }

    public String getNome() {
      return nome;
    }

    public double getPreco(){
      return preco;
    }

    public double precoFinal(){
      return preco;
    }

}

class ComboLeblanc extends ItemDoCardapio {
  public ComboLeblanc(String nome, double preco){
    super(nome, preco);
  }

  @Override
  public double precoFinal() {
    return (getPreco() * 0.9);
  }
}

class CafeLeblanc {
  private ArrayList<ItemDoCardapio> cardapio;

  public CafeLeblanc(){
    this.cardapio = new ArrayList<>();
  }

  public void adicionar(ItemDoCardapio item){
    cardapio.add(item);
  }

  public void mostrarCardapio(){
    for(ItemDoCardapio item : cardapio){
      System.out.println("Item: " + item.getNome() + " | Valor: R$" + item.precoFinal());
    }
  }
}

public class Main {
    public static void main(String[] args) {

      ItemDoCardapio item1 = new ItemDoCardapio("Café", 4.99);
      ItemDoCardapio item2 = new ItemDoCardapio("Bolo de Chocolate", 12.00);
      ComboLeblanc combo = new ComboLeblanc("Pão com linguiça e Cafe", 10.00);
      CafeLeblanc cafeLeblanc = new CafeLeblanc();

      cafeLeblanc.adicionar(item1);
      cafeLeblanc.adicionar(item2);
      cafeLeblanc.adicionar(combo);

      cafeLeblanc.mostrarCardapio();
    }
}
