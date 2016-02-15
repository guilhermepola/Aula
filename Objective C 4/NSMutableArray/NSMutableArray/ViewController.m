//
//  ViewController.m
//  NSMutableArray
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
     NSMutableArray - é uma classe para armazenamento de dados similar ao array, porém noss mutableArray é Mutável, permite alterações depois da sua inicialização.
     */
    
    NSMutableArray *arrayMutavel = [[NSMutableArray alloc]initWithObjects:@"Gueri", nil];
    
    NSLog(@"Quantidade do array: %i", (int)arrayMutavel.count);
    
    [arrayMutavel addObject:@"Gervásio"];
    [arrayMutavel addObject:@"Prequepá"];
    
    //Removendo o primeiro index do array
    [arrayMutavel removeObjectAtIndex:0];
    NSLog(@"Meu array: \n%@", [arrayMutavel componentsJoinedByString:@"\n"]);
    
    [arrayMutavel replaceObjectAtIndex:0 withObject:@"Gueri-Gueri"];
    NSLog(@"Meu array: \n%@", [arrayMutavel componentsJoinedByString:@"\n"]);
    
    [arrayMutavel removeLastObject];
    NSLog(@"Meu array: \n%@", [arrayMutavel componentsJoinedByString:@"\n"]);
    
    [arrayMutavel removeAllObjects];
    NSLog(@"Meu array: \n%@", [arrayMutavel componentsJoinedByString:@"\n"]);


    

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
