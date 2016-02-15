

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
- (IBAction)alterouSegmented:(UISegmentedControl *)sender;

@end

