#import "PTNavigationController.h"

@interface PTNavigationController()

@property (nonatomic, strong, readonly, nullable) PTFlutterDocumentController* currentFlutterDocumentController;

@end

@implementation PTNavigationController

- (void)setNavigationBarHidden:(BOOL)hidden animated:(BOOL)animated
{
    BOOL allowed = [self.currentFlutterDocumentController shouldSetNavigationBarHidden:hidden animated:animated];

    if (allowed) {
        [super setNavigationBarHidden:hidden animated:animated];
    }
}

- (void)setToolbarHidden:(BOOL)hidden animated:(BOOL)animated
{
    BOOL allowed = [self.currentFlutterDocumentController shouldSetToolbarHidden:hidden animated:animated];

    if (allowed) {
        [super setToolbarHidden:hidden animated:animated];
    }
}

- (PTFlutterDocumentController *)currentFlutterDocumentController {
    return self.ptDocumentController;
}

@end
