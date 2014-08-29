//
//  ScheduleCell.m
//  CMEP
//
//  Created by renanvs on 8/28/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import "ScheduleBallonView.h"
#import "ScheduleCell.h"

@implementation ScheduleCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

-(id)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setAlpha:0];
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    [self setSelectionStyle:UITableViewCellSelectionStyleNone];
    [self setAlpha:0.6];
    // Configure the view for the selected state
}

-(float)getCellHeightWithScheduleModel:(ScheduleModel*)model{
    CGRect cellFrame = self.frame;
    CGFloat height = cellFrame.size.height;
    if (model.titles.count > 1) {
        height = cellFrame.size.height + (29 * model.titles.count);
    }
    cellFrame.size.height = height;
    return cellFrame.size.height;
}

-(void)setScheduleModel:(ScheduleModel*)model{
    scheduleModel = model;
    typeImageView.image = [UIImage imageNamed:[self getImageNameByScheduleType:model.type]];
    initHourLabel.text = model.start;
    endHourLabel.text = model.end;
    
    [self createBallonWithModel:model];
}

-(void)createBallonWithModel:(ScheduleModel*)model{
    scheduleBallonView = [Utils loadNibForName:@"ScheduleBallonView"];
    [scheduleBallonView setScheduleModel:model];
    [ballonContainer addSubview:scheduleBallonView];
}

-(NSString*)getImageNameByScheduleType:(ScheduleType)type{
    if (type == ScheduleTypeA) {
        return @"";
    }
    //todo: criar os restantes
    return @"";
}

@end
