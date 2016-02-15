//
//  ViewController.m
//  UIPickerView
//
//  Copyright © 2016 Guilherme Pola. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Populando meu array
    self.arrayNomes = @[@"Gueri-Gueri", @"Gervásio", @"Prequepá", @"Asdrub0l"];
    
    //Ligando o delegate e o dataSource
    //Quando precisamos resgatar interações usamos o delegate
    //Quando precisamos fornecer dados para criação usamos o dataSource
    self.pickerViewNome.delegate = self;
    self.pickerViewNome.dataSource = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//Método que define quantidade de colunas no pickerView
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{


    return 2;
}
//Método que define quantidade de linhas no pickerView

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{

//    if (component == 0) {
//        return meuOutroArray.count
//    }else
    return self.arrayNomes.count;
}
//Método que define o título para cada linha
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{

//    if (component == 0) {
//        NSString *nome = [meuOutroArray objectAtIndex:row];
//        return nome;
//
//    }
    
    NSString *nome = [self.arrayNomes objectAtIndex:row];
    
    return nome;

}
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    
    NSLog(@"SELECIONOU INDEX: %i NOME: %@", (int)row, self.arrayNomes[row]);

}
@end







