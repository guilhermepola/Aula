//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //SegmentedControl sem seleção
    self.segmentedControl.selectedSegmentIndex = -1;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)alterouSegmented:(UISegmentedControl *)sender {
    /* UM UISegmentedControl funciona como um "Radio Button". Apenas um escolha pode ser feita.
     
     A escolha é baseada em um index, assim como o Array ele sempre inicia no ZERO
     
     */
    NSLog(@"O segmento selecionado é: %i", (int)sender.selectedSegmentIndex);
    NSLog(@"O nome do segmento é: %@", [sender titleForSegmentAtIndex:sender.selectedSegmentIndex]);
    switch (sender.selectedSegmentIndex) {
        case 0:
            self.view.backgroundColor = [UIColor redColor];
            break;
        case 1:
            self.view.backgroundColor = [UIColor orangeColor];
            break;
        case 2:
            self.view.backgroundColor = [UIColor blueColor];
            break;
        case 3:
            self.view.backgroundColor = [UIColor lightGrayColor];
            break;
            
        default:
            self.view.backgroundColor = [UIColor whiteColor];
            break;
    }
}
@end












