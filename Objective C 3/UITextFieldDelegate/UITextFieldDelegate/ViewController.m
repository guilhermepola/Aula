

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];


    //Ligando a textField
    self.textFieldUnica.delegate = self;
    
    //Dando foco ao teclado
//    [self.textFieldUnica becomeFirstResponder];
    
}
-(void)viewDidAppear:(BOOL)animated{
//        [self.textFieldUnica becomeFirstResponder];

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)atualizar:(UIButton *)sender {
    
    //Colocando o valor da textField na Label
    self.labelUnica.text = self.textFieldUnica.text;
    
}

#pragma mark - Métodos de UITextFieldDelegate

//Método que é executado quando o return é clicado
-(BOOL)textFieldShouldReturn:(UITextField *)textField{

    NSLog(@"CLICOOOOU RETURN :)");
    
    //Tirar o foco da textField
    [self.textFieldUnica resignFirstResponder];
    
    //Para habilitar nosso método
    return YES;
}
//método que é executado quando textField ganha foco
-(void)textFieldDidBeginEditing:(UITextField *)textField{

    [UIView animateWithDuration:0.25 animations:^{
        self.view.center = CGPointMake(self.view.center.x, self.view.center.y - 100);
        self.view.backgroundColor = [UIColor blueColor];

    }];


    NSLog(@"Começou a digitar");

}
//método que é executado quando textField perde foco
-(void)textFieldDidEndEditing:(UITextField *)textField{
    NSLog(@"Terminou de a digitar");
    [UIView animateWithDuration:0.25 animations:^{
        self.view.center = CGPointMake(self.view.center.x, self.view .center.y + 100);
        self.view.backgroundColor = [UIColor greenColor];
    }];

}
//método que é executado quando o usuário digitar algo
-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{

    NSLog(@"Digitou");
    //Return YES -> Aceita o caractere
    //Return NO -> Não aceita o caractere

    return YES;
}


#pragma mark - Métodos de Touch
//Método que é executado quando tem um toque na tela
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

    //Colocando o foco na classe vai descer teclado, pois tiramos o foco da textField
    [self becomeFirstResponder];


}
//Método que permite que minha classe tenha foco
-(BOOL)canBecomeFirstResponder{
   
    //return NO -> a classe não pode receber o foco
    //return YES -> a classe PODE receber o foco

    return YES;
}
@end









