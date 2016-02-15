//
//  ViewController.h
//  TrocaDeDadosEntreTelas
//
//  Copyright © 2016 Guilherme Pola. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *textFieldNome;

@property (weak, nonatomic) IBOutlet UITextField *textFieldSobrenome;

- (IBAction)avancar:(UIButton *)sender;

@end

