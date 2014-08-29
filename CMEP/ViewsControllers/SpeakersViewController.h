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
}

- (IBAction)back:(id)sender;

- (IBAction)showMenu:(id)sender;

@end
