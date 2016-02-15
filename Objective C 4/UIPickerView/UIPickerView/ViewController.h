//
//  ViewController.h
//  UIPickerView
//
//  Copyright © 2016 Guilherme Pola. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>

@property (weak, nonatomic) IBOutlet UIPickerView *pickerViewNome;

//Array que fornecerá dados para o pickerView
@property (nonatomic, strong)NSArray *arrayNomes;
@end

