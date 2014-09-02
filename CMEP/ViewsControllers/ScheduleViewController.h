//
//  ScheduleViewController.h
//  CMEP
//
//  Created by renanvs on 8/28/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ScheduleCell.h"

@interface ScheduleViewController : CMEPViewController<UITableViewDataSource, UITableViewDelegate>{
    __weak IBOutlet UITableView *scheduleTableView;
    __weak IBOutlet UILabel *dayLabel;
    __weak IBOutlet UILabel *monthYearLabel;
    __weak IBOutlet UILabel *weekLabel;
    NSArray *scheduleListDay0;
    NSArray *scheduleListDay1;
    NSArray *currentScheduleList;
    ScheduleCell *cellSample;
    int currentDayIndex;
}

- (IBAction)goToNextPossibleDay:(id)sender;

@end
