//
//  ViewController.m
//  Blocks
//
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    [self gueriGueri:^(BOOL download)
    {
        NSLog(@"%i", download);
    }];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)gueriGueri:(void (^)(BOOL))blocks
{
    NSLog(@"Olha o blocks ai!");
    
    //"chamar" o blocks
    blocks(NO);

}
@end
