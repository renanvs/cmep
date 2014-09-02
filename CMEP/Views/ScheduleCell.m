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
    [self setAlpha:0.7];
    if (!selected) {
        if (modelIsSet) {
            typeImageView.frame = originalImageFrame;
        }
    }else{
        CGRect sizebleFrame = originalImageFrame;
        sizebleFrame.size.height = sizebleFrame.size.width = sizebleFrame.size.width + 10;
        sizebleFrame.origin.x = sizebleFrame.origin.x - 5;
        sizebleFrame.origin.y = sizebleFrame.origin.y - 5;
        typeImageView.frame = sizebleFrame;
    }
    
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

+(float)getCellHeightWithScheduleModel:(ScheduleModel*)model{
    //CGRect cellFrame = self.frame;
    CGFloat height = 79;
    if (model.titles.count > 1) {
        height = height + (29 * model.titles.count);
    }
    //cellFrame.size.height = height;
    return height;
}

-(void)setScheduleModel:(ScheduleModel*)model{
    scheduleModel = model;
    typeImageView.image = [UIImage imageNamed:[self getImageNameByScheduleType:model.type]];
    
    if (!modelIsSet) {
        originalImageFrame = typeImageView.frame;
        modelIsSet = YES;
    }
    
    initHourLabel.text = model.start;
    endHourLabel.text = model.end;
    
    [self createBallonWithModel:model];
}

-(void)createBallonWithModel:(ScheduleModel*)model{
    scheduleBallonView = [Utils loadNibForName:@"ScheduleBallonView"];
    [scheduleBallonView setScheduleModel:model];
    [ballonContainer addSubview:scheduleBallonView];
}

-(void)clean{
    [scheduleBallonView removeFromSuperview];
    scheduleBallonView = nil;
}

-(NSString*)getImageNameByScheduleType:(ScheduleType)type{
    if (type == ScheduleTypeStart) {
        return @"icon_start";
    }else if (type == ScheduleTypeCoffee) {
        return @"icon_coffee";
    }else if (type == ScheduleTypeCoquetel) {
        return @"icon_coquetel";
    }else if (type == ScheduleTypeLecture) {
        return @"icon_palestra";
    }
    //todo: criar os restantes
    return @"";
}

-(void)setSelectedLayout{
    [self setAlpha:1];
    
}

@end
