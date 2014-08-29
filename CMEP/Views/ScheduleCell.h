//
//  ScheduleCell.h
//  CMEP
//
//  Created by renanvs on 8/28/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ScheduleModel.h"

@interface ScheduleCell : UITableViewCell{

    __weak IBOutlet UIImageView *typeImageView;
    __weak IBOutlet UILabel *initHourLabel;
    __weak IBOutlet UILabel *endHourLabel;
    __weak IBOutlet UIView *ballonContainer;
    
    ScheduleModel *scheduleModel;
}

-(float)getCellHeight;

-(void)setScheduleModel:(ScheduleModel*)model;

@end
