
#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextViewDelegate, UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textFieldNome;
@property (weak, nonatomic) IBOutlet UITextField *textFieldIdade;
@property (weak, nonatomic) IBOutlet UITextField *textFieldAltura;
@property (weak, nonatomic) IBOutlet UITextView *textViewTexto;

- (IBAction)mostrar:(UIButton *)sender;

@end

