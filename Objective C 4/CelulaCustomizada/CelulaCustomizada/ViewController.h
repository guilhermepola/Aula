//
//  ViewController.h
//  CelulaCustomizada
//
//  Copyright © 2016 Guilherme Pola. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CellCustomTableViewCell.h"

@interface ViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *minhaTableView;
@property (nonatomic, strong)NSMutableArray *arrayPhotos;

@end

