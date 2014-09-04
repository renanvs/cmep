//
//  ScheduleNotificationViewController.h
//  CMEP
//
//  Created by renan veloso silva on 9/3/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MZFormSheetController.h"

@interface ScheduleNotificationViewController : UIViewController{
    __weak IBOutlet UILabel *titleLabel;
    __weak IBOutlet UILabel *descriptionLabel;
    __weak IBOutlet UILabel *tipLabel;
}

-(IBAction)close:(id)sender;

@end
