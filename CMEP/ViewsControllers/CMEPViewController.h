//
//  CMEPViewController.h
//  CMEP
//
//  Created by renan veloso silva on 9/1/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TopbarView.h"

@interface CMEPViewController : UIViewController<TopbarViewDelegate>{
    __weak IBOutlet UIView *topbarContainer;
    TopbarView *topbar;
    NSString *topbarTitle;
    BOOL backToPreviosController;
    BOOL dismissControllerOnBack;
}

@property (nonatomic) NSString *topbarTitle;
@property (nonatomic) BOOL backToPreviosController;
@property (nonatomic) BOOL dismissControllerOnBack;

@end
