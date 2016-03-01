

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

- (IBAction)enviarEmail:(UIButton *)sender {
 
    if ([MFMailComposeViewController  canSendMail]) {
        //Caso o dispositivo possa enviar E-mail
        
        //Criando um objeto responsável pela tela de envio de E-mail
    MFMailComposeViewController *mailCompose = [[MFMailComposeViewController alloc]init];
        
        [mailCompose setSubject:@"Doação Mac Pro"];
        [mailCompose setMessageBody:@"Poderia doar alguns Mac Pro para Quaddro?" isHTML:YES];
        [mailCompose setToRecipients:@[@"steve.jobs@apple.com", @"timcook@apple.com"]];
     
        
        
        mailCompose.mailComposeDelegate = self;
        
        [self presentViewController:mailCompose animated:YES completion:nil];
        
        
        
    }else{
    
        UIAlertView *alerta = [[UIAlertView alloc]initWithTitle:@"Aviso!"
                                                        message:@"Seu dispositivo não pode enviar e-mail."
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil, nil];
        
        [alerta show];
    
    
    }

}
#pragma mark - Métodos MFMailComposeViewControllerDelegate
//Método que é disparado quando o usuário efetua uma ação (envia, fecha, salvar Rascunho e etc)
-(void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error{
    
    
    switch (result) {
        case MFMailComposeResultSent:
            NSLog(@"Email enviado com sucesso");
            break;
        case MFMailComposeResultCancelled:
            NSLog(@"E-mail Cancelado");
            break;
        case MFMailComposeResultFailed:
            NSLog(@"Falha no email");
            break;
        case MFMailComposeResultSaved:
            NSLog(@"Salvo em Rascunho");
            break;
        default:
            break;
    }

    [controller dismissViewControllerAnimated:YES completion:nil];


}

- (IBAction)enviarMensagem:(UIButton *)sender {
    
    if ([MFMessageComposeViewController canSendText]) {
        MFMessageComposeViewController *messageCompose = [[MFMessageComposeViewController alloc]init];
        
        [messageCompose setBody:@"E aee, blz?"];
        
        messageCompose.messageComposeDelegate = self;
        
        [self presentViewController:messageCompose animated:YES completion:nil];
    }else{
    
        UIAlertView *alerta = [[UIAlertView alloc]initWithTitle:@"Aviso"
                                                        message:@"Seu dispositivo não pode enviar mensagem"
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil, nil];
      
        [alerta show];
    
    }
    
    
    
}
#pragma mark - MFMessageComposeViewControllerDelegate
-(void)messageComposeViewController:(MFMessageComposeViewController *)controller didFinishWithResult:(MessageComposeResult)result{

    //Verificando o resultado do envio (se foi cancelado, se enviou com sucesso ou se houve falha)
    switch (result) {
        case MessageComposeResultCancelled:
            NSLog(@"Mensagem Cancelada");
            break;
        case MessageComposeResultFailed:
            NSLog(@"Falha na Mensagem");
            break;
        case MessageComposeResultSent:
            NSLog(@"Enviado com sucesso");
            break;
        default:
            break;
    }
    //Quando terminar o resultado(result), voltar para nosso app
    [controller dismissViewControllerAnimated:YES completion:nil];


}
@end
