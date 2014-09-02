//
//  TopbarView.m
//  CMEP
//
//  Created by renanvs on 9/1/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import "TopbarView.h"

@implementation TopbarView
@synthesize delegate;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(IBAction)back:(id)sender{
    if ([delegate respondsToSelector:@selector(topbarViewBackPressed)]) {
        [delegate topbarViewBackPressed];
    }
}

-(IBAction)menu:(id)sender{
    if ([delegate respondsToSelector:@selector(topbarViewMenuPressed)]) {
        [delegate topbarViewMenuPressed];
    }
}

-(void)setController:(UIViewController*)_controller{
    
}

-(void)setTopbarTitle:(NSString *)__topbarTitle{
    titleLabel.text = __topbarTitle;
}

-(void)willMoveToSuperview:(UIView *)newSuperview{
    [titleLabel setCMEPFont];
}

-(void)setBackButtonImage:(UIImage*)image{
    [backButton setImage:image forState:UIControlStateNormal];
}

@end
