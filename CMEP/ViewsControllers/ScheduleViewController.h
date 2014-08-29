//
//  ScheduleViewController.h
//  CMEP
//
//  Created by renanvs on 8/28/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ScheduleViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>{
    __weak IBOutlet UITableView *scheduleTableView;
    __weak IBOutlet UILabel *dayLabel;
    __weak IBOutlet UILabel *monthYearLabel;
    __weak IBOutlet UILabel *weekLabel;
    NSArray *scheduleList;
    NSMutableArray *cellHeights;
}

- (IBAction)goToNextPossibleDay:(id)sender;
- (IBAction)back:(id)sender;
- (IBAction)showMenu:(id)sender;

@end