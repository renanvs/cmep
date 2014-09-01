//
//  TopbarView.h
//  CMEP
//
//  Created by renanvs on 9/1/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TopbarViewDelegate <NSObject>

@optional
-(void)topbarViewBackPressed;
-(void)topbarViewMenuPressed;

@end

@interface TopbarView : UIView{
    id<TopbarViewDelegate> delegate;
    __weak IBOutlet UILabel *title;
}

-(IBAction)back:(id)sender;
-(IBAction)menu:(id)sender;

@property (nonatomic) id<TopbarViewDelegate> delegate;

@end
