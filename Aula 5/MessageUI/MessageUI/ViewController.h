

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface ViewController : UIViewController<MFMailComposeViewControllerDelegate, MFMessageComposeViewControllerDelegate>

- (IBAction)enviarEmail:(UIButton *)sender;

- (IBAction)enviarMensagem:(UIButton *)sender;


@end

