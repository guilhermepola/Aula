//
//  Tela2ViewController.m
//  ProjetoClasses
//
//  Copyright © 2016 Guilherme Silva. All rights reserved.
//

#import "Tela2ViewController.h"

@interface Tela2ViewController ()

@end

@implementation Tela2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.labelNomeCompleto.text = self.nomeCompleto;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)voltar:(UIButton *)sender {
    
    [self dismissViewControllerAnimated:YES completion:^{
       
        NSLog(@"VOLTOU");
    }];
}
@end





