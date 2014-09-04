//
//  LectureRatingViewController.h
//  CMEP
//
//  Created by renan veloso silva on 9/3/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ScheduleModel.h"

@interface LectureRatingViewController : CMEPViewController{
    __weak IBOutlet UIButton *ratingButton;
    ScheduleModel *currentScheduleModel;
    float ratingValue;
    
    __weak IBOutlet UILabel *discutionLabel;
    __weak IBOutlet UILabel *descriptionLabel;
    __weak IBOutlet UILabel *debatersLabel;
    __weak IBOutlet UILabel *moderatorLabel;
    
    __weak IBOutlet UILabel *discutionContentLabel;
    __weak IBOutlet UILabel *descriptionContentLabel;
    __weak IBOutlet UILabel *debatersContentLabel;
    __weak IBOutlet UILabel *moderatorContentLabel;
    
    __weak IBOutlet UIView *starsContainer;
    __weak IBOutlet UIImageView *starImage0;
    __weak IBOutlet UIImageView *starImage1;
    __weak IBOutlet UIImageView *starImage2;
    __weak IBOutlet UIImageView *starImage3;
    __weak IBOutlet UIImageView *starImage4;
    
    CGFloat startPoint;
    CGFloat endPoint;
}

-(IBAction)sendRating:(id)sender;

@property (nonatomic) ScheduleModel *currentScheduleModel;

@end
