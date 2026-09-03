use std::io;

fn imprimir_terminados_em(digito: i32, limite_inferior: i32, limite_superior: i32) {
   for i in limite_inferior..=limite_superior {
    if i % 10 == digito {
        println!("'{}'", i);
    }
   }
}

fn main() {
    println!("Digite o final desejado(0 a 9): ");
    let mut digito = String::new();
    io::stdin().read_line(&mut digito).expect("Erro ao ler");
    let digito1: i32 = digito.trim().parse().unwrap_or(0);

    println!("Digite o limite inferior: ");
    let mut limiteInf = String::new();
    io::stdin().read_line(&mut limiteInf).expect("Erro ao ler");
    let inferior: i32 = limiteInf.trim().parse().unwrap_or(0);

    println!("Digite o limite superior: ");
    let mut limiteSup = String::new();
    io::stdin().    read_line(&mut limiteSup).expect("Erro ao ler");
    let superior: i32 = limiteSup.trim().parse().unwrap_or(0);

    println!("Numeros no intervalo terminados em '{}': ", digito);

    imprimir_terminados_em(digito1, inferior, superior);
}
