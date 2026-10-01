#include <iostream>
#include <string>

using namespace std;

class Banda {
private:
    string nome;
    int integrantes;
    float potenciaSom;
    int energia;

public:
    // Construtor
    Banda (string n, int i, float p, int e) 
        : nome(n), integrantes(i), potenciaSom(p), energia(e) {}

    // Método de duelo
    void duelar(Banda &rival) {
        cout << nome << " duelou contra " << rival.nome << endl;
        rival.energia -= potenciaSom;
    }

    // Exibição de dados
    void exibirStatus() {
        cout << nome << " - Integrantes: " << integrantes 
             << " | Potencia: " << potenciaSom 
             << " | Energia: " << energia << endl;
    }
};

int main() {
    Banda b1("Cbjr", 5, 25.5, 100);
    Banda b2("Kansas", 8, 30.0, 100);

    cout << "Status inicial:" << endl;
    b1.exibirStatus();
    b2.exibirStatus();
    cout << endl;

    b1.duelar(b2);
    cout << endl;

    cout << "Status apos o duelo:" << endl;
    b1.exibirStatus();
    b2.exibirStatus();

    return 0;
}
