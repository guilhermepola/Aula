
#import "ViewController.h"

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

- (IBAction)mostrar:(UIButton *)sender {
    
self.textViewTexto.text = [NSString stringWithFormat:@"Meu nome é: %@ \n\n\n\n\n\n\n\n Minha idade é: %@\n\n\n\n\n\n\n Minha Altura é: %@\n\n\n\n\n\n\n", self.textFieldNome.text,self.textFieldIdade.text,self.textFieldAltura.text];
    
}

@end




