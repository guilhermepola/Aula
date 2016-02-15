//
//  ViewController.m
//  NSUserDefaults
//
//  Copyright © 2016 Guilherme Pola. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextFieldDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)salvar:(UIButton *)sender {
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];

    [userDefaults setObject:self.textFieldNome.text forKey:@"nome"];
    [userDefaults setInteger:[self.textFieldIdade.text integerValue] forKey:@"idade"];
    [userDefaults synchronize];
}

- (IBAction)resgatar:(UIButton *)sender {
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    
    
    NSString *nome = [userDefaults objectForKey:@"nome"];
    int idade = (int)[userDefaults integerForKey:@"idade"];
    
    self.textFieldNome.text = nome;
    self.textFieldIdade.text = [@(idade) stringValue];
    
}
-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{


    return YES;

}
@end
