//
//  ScheduleCell.h
//  CMEP
//
//  Created by renanvs on 8/28/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ScheduleModel.h"
#import "ScheduleBallonView.h"

@interface ScheduleCell : UITableViewCell{

    __weak IBOutlet UIImageView *typeImageView;
    __weak IBOutlet UILabel *initHourLabel;
    __weak IBOutlet UILabel *endHourLabel;
    __weak IBOutlet UIView *ballonContainer;
    
    ScheduleModel *scheduleModel;
    ScheduleBallonView *scheduleBallonView;
    CGRect originalImageFrame;
}

@property (nonatomic) IBOutlet UIView *columnView;

-(float)getCellHeightWithScheduleModel:(ScheduleModel*)model;

-(void)setScheduleModel:(ScheduleModel*)model;

-(void)setSelectedLayout;

@end
