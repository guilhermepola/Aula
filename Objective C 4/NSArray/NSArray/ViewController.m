//
//  ViewController.m
//  NSArray
//
//  Copyright © 2016 Guilherme Pola. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /* 
        NSArray - é a classe responsável por criar arrays em ObjC.
        NSArray armazena somente dados id (Orientados a obj).
        NSArray não é mutável.
     
     */

    //Alocando e iniciando um array com dados
    NSArray *array = [[NSArray alloc]initWithObjects:@"Asdrubol", @"Gervásio", @"Gueri", @"Prequepá", nil];
    
    //Alocando e iniciando um array da forma literal
    NSArray *arrayLiteral = @[@"Agora Sim", @"VixeNossa", @"Tá Tranquilo", @"Favorável"];
    
    NSLog(@"Qtde elementos arrayLiteral: %i", (int)arrayLiteral.count);
  
    NSLog(@"Pegando primeiro elemento do array: %@", [arrayLiteral objectAtIndex:0]);
    NSLog(@"Pegando primeiro elemento do array: %@", array[0]);
    
    //Verifica se existe algum elemento no meu array
    if ([array containsObject:@"Gueri"]) {
        NSLog(@"EXISTE O GUERI");
        NSLog(@"%i", (int)[array indexOfObject:@"Gueri"]);
    }else{
        NSLog(@"Cade o Gueri?");
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
