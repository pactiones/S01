#include <iostream>
#include <string>

using namespace std;

class MembroInatel {
protected:
    string nome;

public:
    MembroInatel(string n) : nome(n) {}

    virtual void seApresentar() {
        cout << "Sou um membro da comunidade Inatel: " << nome << "." << endl;
    }

    virtual ~MembroInatel() {}
};

// Classe filha Aluno
class Aluno : public MembroInatel {
private:
    string curso;

public:
    Aluno(string n, string c) : MembroInatel(n), curso(c) {}

    void seApresentar() override {
        cout << "Meu nome eh " << nome << " e estudo no curso de " << curso << "." << endl;
    }
};

// Classe filha Professor
class Professor : public MembroInatel {
private:
    string disciplina;

public:
    Professor(string n, string d) : MembroInatel(n), disciplina(d) {}

    void seApresentar() override {
        cout << "Meu nome eh " << nome << " e leciono a disciplina de " << disciplina << "." << endl;
    }
};

int main() {
    MembroInatel m1("Marcos");

    Aluno a1("Mateus", "Engenharia de software");
    Professor p1("Ruan", "Paradigmas");

    m1.seApresentar();
    a1.seApresentar();
    p1.seApresentar();

    return 0;
}
