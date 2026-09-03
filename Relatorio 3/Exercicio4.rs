use std::io;

fn calcular_pontuacao(prova1: f64, prova2: f64, redacao: f64) -> f64 {
   let NPT = (prova1 + prova2) / 2.0;

   let PF = (NPT * 0.6) + (redacao * 0.4);
   PF
}

fn main() {
    println!("Digite a nota da prova teorica 1: ");
    let mut entrada1 = String::new();
    io::stdin().read_line(&mut entrada1).expect("Erro ao ler");
    let prova1: f64 = entrada1.trim().parse().unwrap_or(0.0);

    println!("Digite a nota da prova teorica 2: ");
    let mut entrada2 = String::new();
    io::stdin().read_line(&mut entrada2).expect("Erro ao ler");
    let prova2: f64 = entrada2.trim().parse().unwrap_or(0.0);

    println!("Digite a nota da redacao: ");
    let mut entrada3 = String::new();
    io::stdin().read_line(&mut entrada3).expect("Erro ao ler");
    let redacao: f64 = entrada3.trim().parse().unwrap_or(0.0);

    let resultado = calcular_pontuacao(prova1, prova2, redacao);

    if resultado < 60.0{
        println!("Infelizmente o candidato nao atingiu a pontuacao minima de aprovacao. Pontuacao final: '{:.2}': ", resultado);
    }
    else
    {
        println!("Parabens! Candidato aprovado no processo seletivo. Pontuacao final: '{:.2}': ", resultado);
    }
}
