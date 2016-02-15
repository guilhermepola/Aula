//
//  ViewController.m
//  TrocaDeDadosEntreTelas
//
//  Copyright © 2016 Guilherme Pola. All rights reserved.
//

#import "ViewController.h"
#import "Tela2ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)avancar:(UIButton *)sender {
}
//Método que é executado quando vai acontecer um segue
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if ([segue.identifier isEqualToString:@"segueTela2"]) {
        
        Tela2ViewController *tela2 = segue.destinationViewController;
        
        NSString *nomeCompletoPrimeiraTela =
        [NSString stringWithFormat:@"%@ %@", self.textFieldNome.text, self.textFieldSobrenome.text];
        
        tela2.nomeCompleto = nomeCompletoPrimeiraTela;
    }

    
}








@end
