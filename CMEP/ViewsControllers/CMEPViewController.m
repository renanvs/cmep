//
//  CMEPViewController.m
//  CMEP
//
//  Created by renan veloso silva on 9/1/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import "CMEPViewController.h"

@implementation CMEPViewController
@synthesize topbarTitle, backToPreviosController;

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
    
    if (!topbar) {
        topbar = [Utils loadNibForName:@"TopbarView"];
        topbar.delegate = self;
    }
}

-(void)viewWillAppear:(BOOL)animated{
    if (![topbar isDescendantOfView:topbarContainer]) {
        [topbarContainer addSubview:topbar];
    }
    topbar.topbarTitle = topbarTitle;
    
    UIImage *btBackImage = nil;
    if (backToPreviosController) {
         btBackImage = [UIImage imageNamed:@"icon_voltar"];
    }else{
        btBackImage = [UIImage imageNamed:@"icon_house"];
    }
    
    [topbar setBackButtonImage:btBackImage];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)topbarViewBackPressed{
    if (backToPreviosController) {
        [self.navigationController popViewControllerAnimated:YES];
    }else{
        [self.navigationController popToRootViewControllerAnimated:YES];
    }
}

-(void)topbarViewMenuPressed{
    [self.viewDeckController openLeftView];
}

@end
