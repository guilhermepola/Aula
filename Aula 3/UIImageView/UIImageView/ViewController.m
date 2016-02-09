

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
        self.imageViewUnica.frame = CGRectMake(0, 0, 10, 40);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)mostrar:(UIButton *)sender {
    
    //Por default não é necessário colocar ext se for png
    //EX:
    //    self.imageViewUnica.image = [UIImage imageNamed:@"meme.jpg"];
    //    self.imageViewUnica.image = [UIImage imageNamed:@"meme.jpeg"];
    self.imageViewUnica.frame = CGRectMake(0, 0, 10, 40);
//    self.textFieldWololo.frame = CGRectMake(0, 0, 200, 400);

    self.imageViewUnica.image = [UIImage imageNamed:@"meme"];
    
    
}

- (IBAction)ocultar:(UIButton *)sender {
    
    self.imageViewUnica.image = nil;
}
@end









