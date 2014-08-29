//
//  PresentationViewController.h
//  CMEP
//
//  Created by renanvs on 8/27/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PresentationViewController : UIViewController{
    
    __weak IBOutlet UIWebView *presentationWebView;
}
- (IBAction)back:(id)sender;
- (IBAction)showMenu:(id)sender;
- (IBAction)aboutAbecs:(id)sender;

@end
