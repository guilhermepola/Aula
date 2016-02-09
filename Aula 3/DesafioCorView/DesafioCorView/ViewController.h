]//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISlider *sliderRed;
@property (weak, nonatomic) IBOutlet UISlider *sliderGreen;
@property (weak, nonatomic) IBOutlet UISlider *sliderBlue;

@property (weak, nonatomic) IBOutlet UILabel *labelRed;
@property (weak, nonatomic) IBOutlet UILabel *labelGreen;
@property (weak, nonatomic) IBOutlet UILabel *labelBlue;

//- (IBAction)alterouSliderRed:(UISlider *)sender;
//- (IBAction)alterouSliderGreen:(UISlider *)sender;
//- (IBAction)alterouSliderBlue:(UISlider *)sender;
- (IBAction)alterouSliders:(UISlider *)sender;

@end

