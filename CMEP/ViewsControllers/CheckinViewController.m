//
//  CheckinViewController.m
//  CMEP
//
//  Created by renan veloso silva on 9/2/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import "CheckinViewController.h"
#import "CMEPNavigationController.h"

@implementation CheckinViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    capture = [[ZXCapture alloc] init];
    capture.camera = capture.back;
    capture.focusMode = AVCaptureFocusModeContinuousAutoFocus;
    capture.rotation = 90.0f;
    
    capture.layer.frame = self.view.bounds;
    [self.view.layer addSublayer:capture.layer];
    [self addObservers];
    
    [self.view bringSubviewToFront:topbarContainer];
    [self.view bringSubviewToFront:bottonBar];
    [self.view bringSubviewToFront:targetContainer];
}

-(void)addObservers{
    [[UIDevice currentDevice] beginGeneratingDeviceOrientationNotifications];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(deviceOrientationDidChange:) name:UIDeviceOrientationDidChangeNotification object:nil];
}

- (void)deviceOrientationDidChange:(NSNotification *)notification {
    UIDeviceOrientation orientation = [[UIDevice currentDevice] orientation];
    if (orientation == UIInterfaceOrientationLandscapeLeft) {
        capture.rotation = 0.0f;
    }else if (orientation == UIInterfaceOrientationLandscapeRight) {
        capture.rotation = 0.0f;
    }else{
        capture.rotation = 90.0f;
    }
}

-(void)viewWillAppear:(BOOL)animated{
    topbarTitle = @"CÓDIGO DE BARRAS";
    dismissControllerOnBack = YES;
    [super viewWillAppear:animated];
    
    [descriptionLabel setCMEPFont];
    
    capture.delegate = self;
    capture.layer.frame = self.view.bounds;
    //capture.layer.frame = CGRectMake(20, 20, 200, 200);
    
    CGAffineTransform captureSizeTransform = CGAffineTransformMakeScale(320 / self.view.frame.size.width, 480 / self.view.frame.size.height);
    capture.scanRect = CGRectApplyAffineTransform(self.view.frame, captureSizeTransform);
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation{
    return (toInterfaceOrientation == UIInterfaceOrientationPortrait);
}
-(BOOL)shouldAutorotate {
    return YES;
}
- (NSUInteger)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskPortrait;
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [self.view bringSubviewToFront:topbarContainer];
    [self.view bringSubviewToFront:bottonBar];
}


- (NSString *)barcodeFormatToString:(ZXBarcodeFormat)format {
    switch (format) {
        case kBarcodeFormatAztec:
            return @"Aztec";
            
        case kBarcodeFormatCodabar:
            return @"CODABAR";
            
        case kBarcodeFormatCode39:
            return @"Code 39";
            
        case kBarcodeFormatCode93:
            return @"Code 93";
            
        case kBarcodeFormatCode128:
            return @"Code 128";
            
        case kBarcodeFormatDataMatrix:
            return @"Data Matrix";
            
        case kBarcodeFormatEan8:
            return @"EAN-8";
            
        case kBarcodeFormatEan13:
            return @"EAN-13";
            
        case kBarcodeFormatITF:
            return @"ITF";
            
        case kBarcodeFormatPDF417:
            return @"PDF417";
            
        case kBarcodeFormatQRCode:
            return @"QR Code";
            
        case kBarcodeFormatRSS14:
            return @"RSS 14";
            
        case kBarcodeFormatRSSExpanded:
            return @"RSS Expanded";
            
        case kBarcodeFormatUPCA:
            return @"UPCA";
            
        case kBarcodeFormatUPCE:
            return @"UPCE";
            
        case kBarcodeFormatUPCEANExtension:
            return @"UPC/EAN extension";
            
        default:
            return @"Unknown";
    }
}

#pragma mark - ZXCaptureDelegate Methods

- (void)captureResult:(ZXCapture *)capture result:(ZXResult *)result {
    if (!result) return;
    
    // We got a result. Display information about the result onscreen.
    NSString *formatString = [self barcodeFormatToString:result.barcodeFormat];
    NSString *display = [NSString stringWithFormat:@"Code: %@. Formato: %@", result.text, formatString];
    codeTextField.text = display;
    //[[[UIAlertView alloc] initWithTitle:@"codigo" message:display delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil] show];
    //[self.decodedLabel performSelectorOnMainThread:@selector(setText:) withObject:display waitUntilDone:YES];
    
    // Vibrate
    AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
}


@end
