//
//  ScheduleBallonView.m
//  CMEP
//
//  Created by renanvs on 8/28/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import "ScheduleBallonView.h"

@implementation ScheduleBallonView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

-(void)setScheduleModel:(ScheduleModel*)model{
    if (model.titles.count == 1) {
        titleLabel.text = [model.titles lastObject];
        subtitleLabel.text = [model.subtitles lastObject];
    }else{
        CGFloat ballonHeight = self.frame.size.height;
        CGRect ballonRect = self.frame;
        ballonRect.size.height = ballonHeight * model.titles.count;
        self.frame = ballonRect;
    }
}

@end
