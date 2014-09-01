//
//  RatingCell.m
//  CMEP
//
//  Created by renanvs on 9/1/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import "RatingCell.h"

@implementation RatingCell
@synthesize ratingValue;

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

-(void)setRatingDictionary:(NSDictionary*)dic{
    titleLabel.text = [dic objectForKey:@"title"];
    descriptionLabel.text = [dic objectForKey:@"description"];
    
    
    startPoint = starImage0.frame.origin.x;
    endPoint = starImage4.frame.origin.x + starImage4.frame.size.width;
}

-(void)setCurrentController:(UIViewController*)controller{
    currentController = controller;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    if (currentController) {
        currentController.viewDeckController.panningMode = IIViewDeckNoPanning;
    }
    
    UITouch *touch = [touches anyObject];
    CGPoint drawPoint = [touch locationInView:starsContainer];
    if (drawPoint.x < 0 || drawPoint.y < 0) {
        return;
    }
    
    [self setStarStatus:drawPoint.x];
    
    CGRect writingStartPoint = CGRectMake(90, 800, 30, 30);
    if (CGRectContainsPoint(writingStartPoint, drawPoint))
    {
        //something
    }
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    CGPoint drawPoint = [touch locationInView:starsContainer];
    NSLog(@"out_moving");
    if (drawPoint.x < 0 || drawPoint.y < 0) {
        return;
    }
    NSLog(@"moving");
    [self setStarStatus:drawPoint.x];
    CGRect writingEndPoint = CGRectMake(390, 800, 30, 30);
    if (CGRectContainsPoint(writingEndPoint, drawPoint))
    {
        //change background if you want user see change without lift finger up
    }
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    if (currentController) {
        currentController.viewDeckController.panningMode = IIViewDeckFullViewPanning;
    }
    
    UITouch *touch = [touches anyObject];
    CGPoint drawPoint = [touch locationInView:starsContainer];
    if (drawPoint.x < 0 || drawPoint.y < 0) {
        return;
    }
    [self setStarStatus:drawPoint.x];
    CGRect writingEndPoint = CGRectMake(390, 800, 30, 30);
    if (CGRectContainsPoint(writingEndPoint, drawPoint))
    {
        //change background when user lift finger up
    }
}

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    CGPoint drawPoint = [touch locationInView:starsContainer];
    if (drawPoint.x < 0 || drawPoint.y < 0) {
        return;
    }
    [self setStarStatus:drawPoint.x];
    CGRect writingEndPoint = CGRectMake(390, 800, 30, 30);
    if (CGRectContainsPoint(writingEndPoint, drawPoint))
    {
        //change background when user lift finger up
    }
}

-(void)clearStars{
    for (UIImageView *starImage in starsContainer.subviews) {
        starImage.image = [UIImage imageNamed:@"starempty"];
        starImage.accessibilityIdentifier = @"starempty";
    }
}

-(void)setStarStatus:(CGFloat)position{
    [self clearStars];
    
    for (UIImageView *starImage in starsContainer.subviews) {
        if (position < (starImage.frame.origin.x + (starImage.frame.size.width/2)) &&
            position > (starImage.frame.origin.x)) {
            starImage.image = [UIImage imageNamed:@"starmiddle"];
            starImage.accessibilityIdentifier = @"starmiddle";
            //return;
        }
        
        if (position >= (starImage.frame.origin.x + (starImage.frame.size.width/2))) {
            starImage.image = [UIImage imageNamed:@"starfull"];
            starImage.accessibilityIdentifier = @"starfull";
        }
    }
    
    ratingValue = [self getRatingValue];
    NSLog(@"rating; %f", ratingValue);
}

-(float)getRatingValue{
    float _ratingValue = 0;
    for (UIImageView *starImage in starsContainer.subviews) {
        if ([NSString isStringEmpty:starImage.accessibilityIdentifier]) {
            _ratingValue = _ratingValue + 0;
        }
        
        if ([starImage.accessibilityIdentifier isEqualToString:@"starmiddle"]) {
            _ratingValue = _ratingValue + 0.5;
        }
        
        if ([starImage.accessibilityIdentifier isEqualToString:@"starfull"]) {
            _ratingValue = _ratingValue + 1.0;
        }
    }
    
    return _ratingValue;
}

@end
