//
//  Pessoa.h
//  PrimeiraClasse
//
//  Created by Macbook Retina on 16/01/16.
//  Copyright © 2016 Macbook Retina. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pessoa : NSObject
//{
//    //iVar
//    int idade;
//    NSString *nome;
//}

//atomic: para o programa para executar este processamento
//nonatomic: multi-task,

//@property(configuracoes) tipo *nomeVariavel
@property(nonatomic,weak) NSString *nome;

//Para declarar tipos primitivos
@property(nonatomic,assign) int idade;
@property(nonatomic,assign) float salario;

//Metodos: -(tipoDeRetorno) nomeDoMétodo;
-(void) falar;
-(void) andar;
+(void) trabalhar;
-(void) pagamento;

//-(tipoDoRetorno) nomeDoMétodoDescritivo: (tipoDoParametro)nomeDoParametroInterno
-(int) calcularIdadeEmDiasComIdade:(int)idade;
-(id)initComNome:(NSString *) nome eIdade:(int) idade;

@end
