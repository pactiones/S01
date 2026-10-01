#include <iostream>
#include <string>

using namespace std;

class LinkSocial {
private:
    string nome;
    string arcana;
    int rank;

public:
    // Setters
    void setNome(string n) {
        nome = n;
    }

    void setArcana(string a) {
        arcana = a;
    }

    void setRank(int r) {
        rank = r;
    }

    // Getters
    string getNome() {
        return nome;
    }

    string getArcana() {
        return arcana;
    }

    int getRank() {
        return rank;
    }

    void subirRank() {
        rank++;
    }
};

int main() {
    LinkSocial linkS;
  
    linkS.setNome("Cloud Strife");
    linkS.setArcana("Soldier");
    linkS.setRank(7);

    cout << "Status inicial:" << endl;
    cout << "Nome: " << linkS.getNome() << endl;
    cout << "Arcana: " << linkS.getArcana() << endl;
    cout << "Rank: " << linkS.getRank() << endl;
    cout << endl;

    linkS.subirRank();

    cout << "Status apos subir de rank:" << endl;
    cout << "Nome: " << linkS.getNome() << endl;
    cout << "Arcana: " << linkS.getArcana() << endl;
    cout << "Rank: " << linkS.getRank() << endl;

    return 0;
}
