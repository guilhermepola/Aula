//
//  ViewController.h
//  UISlider
//
//  Created by Macbook Retina on 16/01/16.
//  Copyright © 2016 Macbook Retina. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISlider *sliderUnico;

@property (weak, nonatomic) IBOutlet UILabel *labelValor;

- (IBAction)alterarValorSlider:(UISlider *)sender;

@end

