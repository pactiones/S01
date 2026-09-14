#include <iostream>
#include <iomanip>
using namespace std;

int main() {

    int matriz_solar[5][5] = {
        {0, 0, 0, 0, 0},
        {0, 0, 0, 0, 0},
        {0, 0, 0, 0, 0},
        {0, 0, 0, 0, 0},
        {0, 0, 0, 0, 0}
    };

    int opcao = 0;
    int fileira;
    int coluna;
    int ativas = 0;
    int inativas = 0;
    float percentual;

    while (opcao != 3){
        cout << "=== TELEMETRIA DO PAINEL SOLAR ===" << endl;
        cout << "1. Ativar Celula" << endl;
        cout << "2. Ver Mapa da Matriz" << endl;
        cout << "3. Sair" << endl;

        cout << "Escolha uma opcao:" << endl;
        cin >> opcao;

        if(opcao == 1){
            cout << "Digite a fileira (0-4): " << endl;
            cin >> fileira;

            cout << "Digite a coluna (0-4): " << endl;
            cin >> coluna;

            if(matriz_solar[fileira][coluna] == 0){
                matriz_solar[fileira][coluna] = 1;
                cout << "Sucesso: Celula solar ativada!" << endl;
            }
            else{
                cout << "Erro: Celula solar ja esta em operacao!" << endl;
            }
        }
        else if(opcao == 2){
            cout << "--- Mapa da Matriz Solar ---" << endl;

            for(int f = 0; f < 5; f++){
                for(int c = 0; c < 5; c++){
                    cout << "["<<matriz_solar[f][c] << "]";

                    if(c < 4){
                        cout << " ";
                    }
                }

                cout << endl;
            }
        }
    }

    for(int f = 0; f < 5; f++){
        for(int c = 0; c < 5; c++){
            if(matriz_solar[f][c] == 1){
                ativas++;
            }
            else{
                inativas++;
            }
        }
    }

    percentual = (ativas * 100) / 25;

    cout<<"=== RELATORIO FINAL DE OPERACAO ==="<<endl;
    cout<<"Total de celulas ATIVAS: "<<ativas<<endl;
    cout<<"Total de celulas INATIVAS: "<<inativas<<endl;
    cout<<fixed<<setprecision(2);
    cout<<"Capacidade Operacional: "<<percentual<<"%"<<endl;

    return 0;
}
