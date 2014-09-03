//
//  CheckinViewController.m
//  CMEP
//
//  Created by renan veloso silva on 9/2/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import "CheckinViewController.h"
#import "CMEPNavigationController.h"

@implementation CheckinViewController

- (void)viewDidLoad
{
    
//    CMEPNavigationController *cmepnc = (CMEPNavigationController*)self.navigationController;
//    cmepnc.justLandscape = YES;
//    [cmepnc reloadAppDelegateRootViewControllerLandscape];
//    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(IBAction)close:(id)sender{
    ready = YES;
    CMEPNavigationController *cmepnc = (CMEPNavigationController*)self.navigationController;
    //cmepnc.justLandscape = NO;
    [self.view setAlpha:0];
    
    [cmepnc reloadAppDelegateRootViewController];
    //[self back];
    [NSTimer scheduledTimerWithTimeInterval:5.0f target:self selector:@selector(back) userInfo:nil repeats:NO];
    
    
}

-(void)back{
    [self.navigationController popToRootViewControllerAnimated:YES];
}

-(void)viewWillAppear:(BOOL)animated{
    [self.view setAlpha:0];
    CMEPNavigationController *cmepnc = (CMEPNavigationController*)self.navigationController;
    //cmepnc.justLandscape = YES;
    [cmepnc shouldAutorotate];
    [titleLabel setCMEPFont];
    [descriptionLabel setCMEPFont];
    self.viewDeckController.panningMode = IIViewDeckNoPanning;
}

-(void)viewWillDisappear:(BOOL)animated{
    self.viewDeckController.panningMode = IIViewDeckFullViewPanning;
}

-(void)viewDidAppear:(BOOL)animated{
    if (!ready) {
        CMEPNavigationController *cmepnc = (CMEPNavigationController*)self.navigationController;
        [cmepnc reloadAppDelegateRootViewControllerLandscape];
        [self.view setAlpha:1];
    }
    
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation{
    return (toInterfaceOrientation == UIInterfaceOrientationLandscapeLeft);
}
-(BOOL)shouldAutorotate {
    return YES;
}
- (NSUInteger)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskLandscapeLeft;
}

@end
