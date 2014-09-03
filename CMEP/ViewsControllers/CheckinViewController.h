//
//  CheckinViewController.h
//  CMEP
//
//  Created by renan veloso silva on 9/2/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <ZXingObjC/ZXingObjC.h>

@interface CheckinViewController : CMEPViewController<ZXCaptureDelegate>{
    __weak IBOutlet UILabel *descriptionLabel;
    ZXCapture *capture;
    __weak IBOutlet UIView *bottonBar;
    __weak IBOutlet UIView *targetContainer;
    __weak IBOutlet UILabel *codeTextField;
}

@end
