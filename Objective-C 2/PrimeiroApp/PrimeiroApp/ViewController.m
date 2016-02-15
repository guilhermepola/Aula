//
//  ViewController.m
//  PrimeiroApp
//
//  Created by Macbook Retina on 16/01/16.
//  Copyright © 2016 Macbook Retina. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Primeiro metodo a rodar no carregamento da view
    self.view.backgroundColor = [UIColor grayColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)clicarNoBotao:(UIButton *)botao{
    
    [self setupLabel];
    
    if ([self.labelNome.text isEqualToString:@"WOOLOOLOO"]){
        self.labelNome.text=@"VALTER";
    } else {
        self.labelNome.text=@"WOOLOOLOO";
    }
}

//Aprendendo propriedades de elemento
-(void)setupLabel{
    self.labelNome.textColor = [UIColor colorWithRed:100/255.0 green:100/255.0 blue:100/255.0 alpha:1.0];
    self.labelNome.backgroundColor = [UIColor colorWithRed:20/255.0 green:240/255.0 blue:58/255.0 alpha:1.0];
    self.labelNome.font = [UIFont fontWithName:@"Verdana" size:38.0];
}

@end
