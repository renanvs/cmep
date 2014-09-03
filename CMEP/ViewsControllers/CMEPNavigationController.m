//
//  CMEPNavigationController.m
//  CMEP
//
//  Created by renan veloso silva on 9/2/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import "CMEPNavigationController.h"

@interface CMEPNavigationController ()

@end

@implementation CMEPNavigationController

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
    self.delegate = self;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(BOOL)shouldAutorotate{
    if (justLandscape) {
        return YES;
    }else {
        return YES;
    }
}

-(NSUInteger)supportedInterfaceOrientations{
//    if (self.justLandscape) {
    if (!justLandscape) {
        NSLog(@"portrait0");
        return UIInterfaceOrientationMaskPortrait;
        
    }else{
        NSLog(@"landscape0");
        return UIInterfaceOrientationMaskLandscape;
    }
    
//    }
//    return UIInterfaceOrientationMaskPortrait;
    return self.supportedInterfaceOrientatoinR;
}

-(UIInterfaceOrientation)preferredInterfaceOrientationForPresentation{
    if (!justLandscape) {
        NSLog(@"portrait1");
        return UIInterfaceOrientationPortrait;
    }else{
        NSLog(@"landscape1");
        return UIInterfaceOrientationLandscapeLeft;
    }
//    if (self.justLandscape) {
        return UIInterfaceOrientationLandscapeLeft;
//    }
//    return UIInterfaceOrientationPortrait;
    return self.orientationR;
}

- (void) reloadAppDelegateRootViewController{
    justLandscape = NO;
    [[[UIApplication sharedApplication].delegate window] setRootViewController:nil];
    
    [(CMEPNavigationController *)self setOrientationR:UIInterfaceOrientationPortrait];
    [(CMEPNavigationController *)self setSupportedInterfaceOrientatoinR:UIInterfaceOrientationMaskPortrait];
    self.viewDeckController.centerController = self;
    
    [[[UIApplication sharedApplication].delegate window] setRootViewController:self.viewDeckController];
}

- (void) reloadAppDelegateRootViewControllerLandscape{
    justLandscape = YES;
    [[[UIApplication sharedApplication].delegate window] setRootViewController:nil];
    
    [(CMEPNavigationController *)self setOrientationR:UIInterfaceOrientationLandscapeLeft];
    [(CMEPNavigationController *)self setSupportedInterfaceOrientatoinR:UIInterfaceOrientationMaskLandscape];
    
    [[[UIApplication sharedApplication].delegate window] setRootViewController:self.viewDeckController];
}

-(NSArray *)popToRootViewControllerAnimated:(BOOL)animated{
    
//    CMEPNavigationController *cmepnc = (CMEPNavigationController*)self;
//    [cmepnc reloadAppDelegateRootViewController];
    
    return [super popToRootViewControllerAnimated:animated];
}

@end
