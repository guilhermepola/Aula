//
//  Tela2ViewController.h
//  ProjetoClasses
//
//  Copyright © 2016 Guilherme Silva. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Tela2ViewController : UIViewController

@property (nonatomic, strong)NSString *nomeCompleto;
@property (weak, nonatomic) IBOutlet UILabel *labelNomeCompleto;

- (IBAction)voltar:(UIButton *)sender;

@end
