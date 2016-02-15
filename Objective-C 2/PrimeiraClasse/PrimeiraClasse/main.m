//
//  main.m
//  PrimeiraClasse
//
//  Created by Macbook Retina on 16/01/16.
//  Copyright © 2016 Macbook Retina. All rights reserved.
//

//Use o sinal de maior e menor quando for classe de sistem
#import <Foundation/Foundation.h>
//Use as aspas quando for uma classe nova
#import "Pessoa.h"

int main(int argc, const char * argv[]) {

    //Criando uma objeto Pessoa
    Pessoa *gervasio = [[Pessoa alloc]init];

    gervasio.nome = @"Gervásio";
    NSLog(@"Nome da Pessoa: %@",gervasio.nome);
    
    gervasio.idade = 88;
    NSLog(@"Idade da Pessoa: %i",gervasio.idade);
    
    gervasio.salario = 5000.5;
    
    [gervasio falar];
    [gervasio andar];
    [Pessoa trabalhar];
    [gervasio pagamento];
    
    int idadeEmDias = [gervasio calcularIdadeEmDiasComIdade:32];
    NSLog(@"Idade em Dias: %i",idadeEmDias);
   
    Pessoa *novaPessoa=[[Pessoa alloc]initComNome:@"Valter" eIdade:32];
    [novaPessoa andar];
    
    
    return 0;
}
