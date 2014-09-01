//
//  PresentationViewController.h
//  CMEP
//
//  Created by renanvs on 8/27/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PresentationViewController : UIViewController<TopbarViewDelegate>{
    
    __weak IBOutlet UIWebView *presentationWebView;
    __weak IBOutlet UIView *topbarContainer;
}

@end
