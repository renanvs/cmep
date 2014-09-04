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

@protocol ScheduleCellDelegate <NSObject>

@optional
-(void)scheduleCellRatingLectureWithModel:(ScheduleModel*)scheduleM;

@end

@interface ScheduleCell : UITableViewCell{

    __weak IBOutlet UIImageView *typeImageView;
    __weak IBOutlet UILabel *initHourLabel;
    __weak IBOutlet UILabel *endHourLabel;
    __weak IBOutlet UIView *ballonContainer;
    
    __weak IBOutlet UILabel *ratingLectureLabel;
    __weak IBOutlet UIButton *ratingLectureButton;
    
    id<ScheduleCellDelegate> delegate;
    
    ScheduleModel *scheduleModel;
    ScheduleBallonView *scheduleBallonView;
    CGRect originalImageFrame;
    BOOL modelIsSet;
}

@property (nonatomic) IBOutlet UIView *columnView;
@property (nonatomic) id<ScheduleCellDelegate> delegate;

-(float)getCellHeightWithScheduleModel:(ScheduleModel*)model;

-(void)setScheduleModel:(ScheduleModel*)model;

-(void)setSelectedLayout;

+(float)getCellHeightWithScheduleModel:(ScheduleModel*)model;

-(void)clean;

-(IBAction)ratingLecture:(id)sender;

@end
