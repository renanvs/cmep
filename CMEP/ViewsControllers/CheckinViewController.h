//
//  CheckinViewController.h
//  CMEP
//
//  Created by renan veloso silva on 9/2/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CheckinViewController : UIViewController{
    __weak IBOutlet UILabel *titleLabel;
    __weak IBOutlet UILabel *descriptionLabel;
    BOOL ready;
}

-(IBAction)close:(id)sender;

@end
