//
//  PresentationAboutViewController.h
//  CMEP
//
//  Created by renanvs on 8/28/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PresentationAboutViewController : UIViewController{
    
    __weak IBOutlet UIWebView *presentationWebView;
}
- (IBAction)back:(id)sender;

@end
