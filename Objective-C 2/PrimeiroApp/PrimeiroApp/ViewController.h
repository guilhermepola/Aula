//
//  ViewController.h
//  PrimeiroApp
//
//  Created by Macbook Retina on 16/01/16.
//  Copyright © 2016 Macbook Retina. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

/*
Quando trabalhamos com proprierties que referenciam com objetos de interface precisamos usar o prefixo IBOutlet, para poder fazer ligacoes entre objetos e propriedades.
 
 
A propriedade weak indica a ligacao entre a propriedade e o seu objeto, normalmente quando utilizamos IBOutlet usamos weak.
 */
@property(nonatomic,weak)IBOutlet UILabel *labelNome;

/*
 Quando trabalhamos com botoes em tela, precisamos usar o prefixo IBAction, para poder fazer ligacao entre objetos e o metodo.
*/
-(IBAction) clicarNoBotao: (UIButton *) botao;


@end

