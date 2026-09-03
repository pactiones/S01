use std::io;

fn acertou_o_alvo(palpite: i32, numero_secreto: i32) -> bool {
    if palpite > numero_secreto {
        palpite - numero_secreto <= 5
    }
    else{
        numero_secreto - palpite <= 5
    }
}

fn main() {
    let numero_secreto: i32 = 13;
    let mut resposta = 0;
    loop{
        println!("Digite o palpite: ");
        let mut entrada = String::new();
        io::stdin().read_line(&mut entrada).expect("Erro ao ler");
        
        let palpite: i32 = entrada.trim().parse().unwrap_or(0);

        if acertou_o_alvo(palpite, numero_secreto){
            if palpite > numero_secreto{
                resposta = palpite - numero_secreto;
            }
            else{
                resposta = numero_secreto - palpite;
            }
            println!("Voce acertou! Ficou a apenas '{}' unidades do numero secreto!", resposta);
            break;
        }
        else{
        println!("Voce passou longe! Tente novamente.");
        }
    }
}
