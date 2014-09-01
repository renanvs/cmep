//
//  RatingCell.h
//  CMEP
//
//  Created by renanvs on 9/1/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol RatingCellDelegate <NSObject>

@optional
-(void)ratingCellRating:(float)ratingValue WithDictionary:(NSDictionary*)dictionary;

@end

@interface RatingCell : UITableViewCell{
    __weak IBOutlet UILabel *titleLabel;
    __weak IBOutlet UILabel *descriptionLabel;
    __weak IBOutlet UIView *starsContainer;
    __weak IBOutlet UIImageView *starImage0;
    __weak IBOutlet UIImageView *starImage1;
    __weak IBOutlet UIImageView *starImage2;
    __weak IBOutlet UIImageView *starImage3;
    __weak IBOutlet UIImageView *starImage4;
    
    CGFloat startPoint;
    CGFloat endPoint;
    float ratingValue;
    UIViewController *currentController;
    NSDictionary *currentDictionary;
    id<RatingCellDelegate> delegate;
}

-(void)setRatingDictionary:(NSDictionary*)dic;
-(void)setCurrentController:(UIViewController*)controller;

@property (nonatomic) float ratingValue;
@property (nonatomic) id<RatingCellDelegate> delegate;

@end
