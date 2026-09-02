use std::io;

fn validar_placa(placa: &str) -> bool {
    if placa.len() < 7{
        return false;
    }

    let mut maiusculas = 0;
    let mut numeros = 0;

    for c in placa.chars() {
        if c.is_ascii_uppercase() {
            maiusculas += 1;
        } 
        if c.is_numeric() { 
            numeros += 1;
        }
    }

    maiusculas >= 4 && numeros >= 2
}

fn main() {
    loop {
        let mut placa = String::new();
        println!("Digite a placa de um veiculo");
        io::stdin().read_line(&mut placa).expect("Erro ao ler");

        if validar_placa(placa.trim()){
            println!("Placa cadastrada no sistema!");
            break;  
        } 
        else{
            println!("Placa invalida.");
        }
    } 
}
