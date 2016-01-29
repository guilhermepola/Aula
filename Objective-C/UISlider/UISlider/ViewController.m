//
//  ViewController.m
//  UISlider
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
//Alterando os valores iniciais do Slider
    self.sliderUnico.minimumValue = 1.0;
    self.sliderUnico.maximumValue = 100.0;
    self.sliderUnico.value = 25.0;

//Para setar o valor quando inicia o programa, podemos fazer de duas maneiras:
//    self.labelValor.text = [NSString stringWithFormat:@"Valor: %.3f",self.sliderUnico.value];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)alterarValorSlider:(UISlider *)sender {
//pegando o valor do slider de duas formas:
//    self.sliderUnico
//    sender.value
    
    self.labelValor.text = [@(sender.value)stringValue];
    
    self.labelValor.text = [NSString stringWithFormat:@"Valor: %.3f",sender.value];
    
//    NSLog(@"Valor Slider: %f",sender.value);
}


@end
