//
//  ViewController.m
//  NSDictionary
//
//  Copyright © 2016 Guilherme Pola. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    /* NSDictionary =  é um dicionário, ele é semalhante a um array, com a diferença que ele não armazena somente o valor, ele também armazena a chave.
     
     Dicionário nada mais que uma coleção de registro com key-value
     
     Assim um NSArray, o NSDictionary é imutável
     
     */

    
    NSDictionary *dicionario = [[NSDictionary alloc]initWithObjectsAndKeys:@"Gervásio", @"nome",
                                    @"Pola", @"sobrenome",
                                    @"iOS", @"treinamento", nil];
    
    NSDictionary *dicionarioLiteral = @{@"nome": @"Asdrubol",
                                        @"sobrenome": @"Pola",
                                        @"iOS": @"treinamento"};
    
//    NSDictionary *dic = @{@"error": @"404",
//                          @"status": @{@"message": @"wololo",
//                                       @"code": @"I022"},
//                          @"data": @{@"wo": @"lolo"}};
    
    [self fazerWololo:dicionario];
    [self fazerWololo:@{@"nome": @"Guilherme"}];
    
    //Resgatando os valores
    NSLog(@"Resgatando o valor de nome: %@", [dicionario objectForKey:@"nome"]);
    NSLog(@"Resgatando o valor de sobrenome: %@", dicionario[@"sobrenome"]);
    NSLog(@"Resgatando o valor de nome: %@", [dicionario objectForKey:@"treinamento"]);


    NSLog(@"Todas as chaves: %@", [dicionarioLiteral allKeys]);
    NSLog(@"Todas os valores: %@", [dicionarioLiteral allValues]);

}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)fazerWololo: (NSDictionary *)wololo{

    NSLog(@"Faz wololo: %@", [wololo objectForKey:@"nome"]);
}
@end






