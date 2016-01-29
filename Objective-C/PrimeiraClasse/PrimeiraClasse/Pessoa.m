//
//  Pessoa.m
//  PrimeiraClasse
//
//  Created by Macbook Retina on 16/01/16.
//  Copyright © 2016 Macbook Retina. All rights reserved.
//

#import "Pessoa.h"

@implementation Pessoa

-(void)falar{
    NSLog(@"Pronto falei!");
}

-(void)andar{
    NSLog(@"%@ está andando",self.nome);
}

-(void)pagamento{
    NSLog(@"%@ recebe o salário de R$ %.2f!",self.nome,self.salario);
}

+(void)trabalhar{
    NSLog(@"Estou trabalhando!");
}

-(int)calcularIdadeEmDiasComIdade:(int) idade{
    
    int tempo = idade * 365;
    
    return tempo;
}

-(id) initComNome:(NSString *)nome eIdade:(int)idade{
    self = [super init];
    
    if (self) {

        self.nome = nome;
        self.idade = idade;
        
    }
    
    return self;
}
@end
