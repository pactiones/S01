#include <iostream>
using namespace std;

int main(){
    float cMax;
    float pAtual = 0.0;
    float nPeso;
    float pRemove;
    int escolha = 0;

    cout << "Informe a capacidade maxima de carga do drone (kg): " << endl;
    cin >> cMax;

    while (escolha != 4){

        cout << "=== SISTEMA DE CARGA DO DRONE ===" << endl;
        cout << "1. Verificar carga" << endl;
        cout << "2. Carregar pacote" << endl;
        cout << "3. Descarregar pacote" << endl;
        cout << "4. Encerrar operacao" << endl;

        cout << "Escolha uma opcao: " << endl;

        cin >> escolha;

        if (escolha == 1){
            cout << "Carga atual: " << pAtual << " kg/" << cMax << " kg" << endl;
            cout << "Espaco disponivel: " << cMax - pAtual << " kg" << endl;
        }
        else if (escolha == 2){
            cout << "Digite o peso do pacote a ser carregado (kg): ";
            cin >> nPeso;

            if (pAtual + nPeso <= cMax){
                pAtual += nPeso;
                cout << "Pacote adicionado com sucesso!" << endl;
            }
            else{
                cout << "Alerta: Peso maximo de decolagem excedido! " << "Operacao cancelada." << endl;
            }
        }
        else if (escolha == 3){
            cout << "Digite o peso a ser removido: ";
            cin >> pRemove;

            if (pAtual - pRemove >= 0)
            {
                pAtual -= pRemove;
                cout << "Pacote descarregado com sucesso." << endl;
            }
            else
            {
                cout << "Alerta: Peso removido e maior que o peso atual. "
                    << "Operacao cancelada." << endl;
            }
        }

    }

    cout << "Encerrando sistema de telemetria...";

    return 0;
}
