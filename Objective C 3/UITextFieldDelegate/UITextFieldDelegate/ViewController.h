/* Trabalhando com protocolos e Delegate
    Abordagem que permite a comunicação entre classes, geralmente ligadas com eventos de interação no Objeto.
    
 
    Protocolo -> Arquivo que define ações
    Delegate -> Objeto que implementa essas ações
 
    Passos:
    1º Colocar na interface  o protocolo desejado EX: <UITextFieldDelegate>
    2º No arquivo de implementação ligar o delegate
    3º Implementar os métodos
 
 */

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textFieldUnica;
@property (weak, nonatomic) IBOutlet UILabel *labelUnica;

- (IBAction)atualizar:(UIButton *)sender;

@end



