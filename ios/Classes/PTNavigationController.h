#import <Flutter/Flutter.h>
#import <PDFNet/PDFNet.h>
#import <Tools/Tools.h>

#import "PTFlutterDocumentController.h"

NS_ASSUME_NONNULL_BEGIN

@interface PTNavigationController : UINavigationController

@property (nonatomic, strong) PTTabbedDocumentViewController* tabbedDocumentViewController;
@property (nonatomic, strong) PTFlutterDocumentController* ptDocumentController;

@end

NS_ASSUME_NONNULL_END
