#include <iostream>
using namespace std;

float calcular_confiabilidade_sistema(float probabilidades[], int tamanho){
    int i = 0;
    float resposta = 1.0;

    for(i = 0; i < tamanho; i++){
        resposta *= probabilidades[i];
    }
    return resposta;
}
int main() 
{
    int n;
    float prob[100];

    cout << "Digite a quantidade de componentes do sistema: " << endl;
    cin >> n;

    for(int i = 0; i < n; i++){
        cout << "Digite a probabilidade do componente " << i + 1 << ": " << endl;
        cin >> prob[i];
    }

    float resposta = calcular_confiabilidade_sistema(prob, n);

    cout << "Confiabilidade total do sistema: " << resposta << " (" << 100*resposta << "%)";

    return 0;
}
