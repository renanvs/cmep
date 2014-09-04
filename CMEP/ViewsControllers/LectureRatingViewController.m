//
//  LectureRatingViewController.m
//  CMEP
//
//  Created by renan veloso silva on 9/3/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import "LectureRatingViewController.h"

@implementation LectureRatingViewController
@synthesize currentScheduleModel;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated{
    topbarTitle = @"AVALIAÇÃO DA PALESTRA";
    backToPreviosController = YES;
    [super viewWillAppear:animated];
    
    startPoint = starImage0.frame.origin.x;
    endPoint = starImage4.frame.origin.x + starImage4.frame.size.width;
    
    //[self hideInvalidLabels];
    [self populateLabels];
    [self setLayout];
}

-(void)setLayout{
    [ratingButton setCMEPFont];
    [discutionLabel setCMEPFont];
    [descriptionLabel setCMEPFont];
    [debatersLabel setCMEPFont];
    [moderatorLabel setCMEPFont];
    [discutionContentLabel setCMEPFont];
    [descriptionContentLabel setCMEPFont];
    [debatersContentLabel setCMEPFont];
    [moderatorContentLabel setCMEPFont];
}

-(void)hideInvalidLabels{
    if (![self existThisTitleinTitleList:@"Debate"]) {
        [discutionContentLabel setHidden:YES];
        [discutionLabel setHidden:YES];
    }else{
        discutionContentLabel.text = [currentScheduleModel.subtitles objectAtIndex:0];
    }
    
    if (![self existThisTitleinTitleList:@"Descrição"]) {
        [descriptionContentLabel setHidden:YES];
        [descriptionLabel setHidden:YES];
    }else{
        descriptionContentLabel.text = [currentScheduleModel.subtitles objectAtIndex:1];
    }
    
    if (![self existThisTitleinTitleList:@"Debatedores"]) {
        [debatersContentLabel setHidden:YES];
        [debatersLabel setHidden:YES];
    }else{
        debatersContentLabel.text = [currentScheduleModel.subtitles objectAtIndex:2];
    }
    
    if (![self existThisTitleinTitleList:@"Moderador"]) {
        [moderatorContentLabel setHidden:YES];
        [moderatorLabel setHidden:YES];
    }else{
        moderatorContentLabel.text = [currentScheduleModel.subtitles objectAtIndex:3];
    }
}

-(void)populateLabels{
    if (![self existThisTitleinTitleList:@"Debate"]) {
        [discutionContentLabel setText:@"-----------------------"];
    }else{
        discutionContentLabel.text = [currentScheduleModel.subtitles objectAtIndex:0];
    }
    
    if (![self existThisTitleinTitleList:@"Descrição"]) {
        [descriptionContentLabel setText:@"-----------------------"];
    }else{
        descriptionContentLabel.text = [currentScheduleModel.subtitles objectAtIndex:1];
    }
    
    if (![self existThisTitleinTitleList:@"Debatedores"]) {
        [debatersContentLabel setText:@"-----------------------"];
    }else{
        debatersContentLabel.text = [currentScheduleModel.subtitles objectAtIndex:2];
    }
    
    if (![self existThisTitleinTitleList:@"Moderador"]) {
        [moderatorContentLabel setText:@"-----------------------"];
    }else{
        moderatorContentLabel.text = [currentScheduleModel.subtitles objectAtIndex:3];
    }
}

-(BOOL)existThisTitleinTitleList:(NSString*)titleToFind{
    for (NSString *title in currentScheduleModel.titles) {
        if ([title isEqualToString:titleToFind]) {
            return YES;
        }
    }
    
    return NO;
}


////

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    CGPoint drawPoint = [touch locationInView:starsContainer];
    if (drawPoint.x < 0 || drawPoint.y < 0) {
        return;
    }
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    CGPoint drawPoint = [touch locationInView:starsContainer];
    if (drawPoint.x < 0 || drawPoint.y < 0) {
        return;
    }
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    CGPoint drawPoint = [touch locationInView:starsContainer];
    if (drawPoint.x < 0 || drawPoint.y < 0) {
        return;
    }
    [self setStarStatus:drawPoint.x];
}

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    CGPoint drawPoint = [touch locationInView:starsContainer];
    if (drawPoint.x < 0 || drawPoint.y < 0) {
        return;
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
        if (position > starImage.frame.origin.x ||
            position >= (starImage.frame.origin.x + starImage.frame.size.width)) {
            starImage.image = [UIImage imageNamed:@"starfull"];
            starImage.accessibilityIdentifier = @"starfull";
        }
    }
    
    ratingValue = [self getRatingValue];
    
    NSLog(@"Rating: %f", ratingValue);
}

-(float)getRatingValue{
    float _ratingValue = 0;
    for (UIImageView *starImage in starsContainer.subviews) {
        if ([NSString isStringEmpty:starImage.accessibilityIdentifier]) {
            _ratingValue = _ratingValue + 0;
        }
        
        if ([starImage.accessibilityIdentifier isEqualToString:@"starfull"]) {
            _ratingValue = _ratingValue + 1.0;
        }
    }
    
    return _ratingValue;
}

-(void)sendRating:(id)sender{
    NSLog(@"sendRating");
}

@end
