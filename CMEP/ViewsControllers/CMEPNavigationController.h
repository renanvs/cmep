//
//  CMEPNavigationController.h
//  CMEP
//
//  Created by renan veloso silva on 9/2/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CMEPNavigationController : UINavigationController<UINavigationControllerDelegate>{
    BOOL justLandscape;
}

@property(nonatomic, assign) UIInterfaceOrientation orientationR;
@property(nonatomic, assign) NSUInteger supportedInterfaceOrientatoinR;

- (void) reloadAppDelegateRootViewControllerLandscape;
- (void) reloadAppDelegateRootViewController;

@end
