   //
//  CellCustomTableViewCell.h
//  CelulaCustomizada
//
//  Copyright © 2016 Guilherme Pola. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CellCustomTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *imageViewPerfil;
@property (weak, nonatomic) IBOutlet UIImageView *imageViewPhoto;
@property (weak, nonatomic) IBOutlet UILabel *labelNome;
@property (weak, nonatomic) IBOutlet UILabel *labelLugar;



@end
