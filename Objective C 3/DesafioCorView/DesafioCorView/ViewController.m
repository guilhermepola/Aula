//
//  ViewController.m
//  DesafioCorView
//
//  Created by Trainning Educational on 30/01/16.
//  Copyright © 2016 Trainning Educational. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self alterarCorView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//
//- (IBAction)alterouSliderRed:(UISlider *)sender {
//    
//    [self alterarCorView];
//}
//
//- (IBAction)alterouSliderGreen:(UISlider *)sender {
//    
//    [self alterarCorView];
//}
//
//- (IBAction)alterouSliderBlue:(UISlider *)sender {
//   
//    [self alterarCorView];
//}

- (IBAction)alterouSliders:(UISlider *)sender {
    NSLog(@"Valor: %f", sender.value);
    [self alterarCorView];
}
-(void)alterarCorView{
    
    float valorRed = self.sliderRed.value * 255.0;
    float valorGreen = self.sliderGreen.value * 255.0;
    float valorBlue = self.sliderBlue.value * 255.0;
    
    self.labelRed.text = [NSString stringWithFormat:@"R: %i", (int)valorRed];
    self.labelGreen.text = [NSString stringWithFormat:@"G: %i", (int)valorGreen];
    self.labelBlue.text = [NSString stringWithFormat:@"B: %i", (int)valorBlue];
    
    
    self.view.backgroundColor = [UIColor colorWithRed:valorRed/255.0
                                                green:valorGreen/255.0
                                                 blue:valorBlue/255.0
                                                alpha:1.0];

}
@end
