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

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(float)getCellHeight{
    CGRect cellFrame = self.frame;
    cellFrame.size.height = cellFrame.size.height * scheduleModel.titles.count;
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
    ScheduleBallonView *sbv = [Utils loadNibForName:@"ScheduleBallonView"];
    [sbv setScheduleModel:model];
    [ballonContainer addSubview:sbv];
}

-(NSString*)getImageNameByScheduleType:(ScheduleType)type{
    if (type == ScheduleTypeA) {
        return @"";
    }
    //todo: criar os restantes
    return @"";
}

@end
