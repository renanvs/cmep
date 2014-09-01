//
//  SpeakersViewController.h
//  CMEP
//
//  Created by renanvs on 8/29/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SpeakersViewController : UIViewController{
    __weak IBOutlet UITableView *speakerTableView;
    NSArray *speakersList;
    __weak IBOutlet UIView *topbarContainer;
}

@end
