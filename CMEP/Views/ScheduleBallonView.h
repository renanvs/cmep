//
//  ScheduleBallonView.h
//  CMEP
//
//  Created by renanvs on 8/28/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ScheduleModel.h"

@interface ScheduleBallonView : UIView{
    __weak IBOutlet UIImageView *baseImage;
    __weak IBOutlet UIView *backgroundView;
}

-(void)setScheduleModel:(ScheduleModel*)model;

@end
