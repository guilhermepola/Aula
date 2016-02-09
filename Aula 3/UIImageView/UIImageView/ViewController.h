

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *textFieldWololo;
/* 
    UIImageView -  é a classe responsável pela visualização de imagem na tela. Ela tem uma propriedade chama image, que pede uma UIImage, que é a class responsável pela criação da image.
 
 
 */
@property (weak, nonatomic) IBOutlet UIImageView *imageViewUnica;

- (IBAction)mostrar:(UIButton *)sender;
- (IBAction)ocultar:(UIButton *)sender;

@end

