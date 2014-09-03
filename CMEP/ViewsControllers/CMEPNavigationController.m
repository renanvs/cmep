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
    return YES;
}

-(NSUInteger)supportedInterfaceOrientations{
    return UIInterfaceOrientationMaskPortrait;
}

-(UIInterfaceOrientation)preferredInterfaceOrientationForPresentation{
    return UIInterfaceOrientationPortrait;
}

-(NSArray *)popToRootViewControllerAnimated:(BOOL)animated{
    
    return [super popToRootViewControllerAnimated:animated];
}

@end
