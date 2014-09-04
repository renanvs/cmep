//
//  ScheduleNotificationViewController.m
//  CMEP
//
//  Created by renan veloso silva on 9/3/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import "ScheduleNotificationViewController.h"

@interface ScheduleNotificationViewController ()

@end

@implementation ScheduleNotificationViewController

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

-(IBAction)close:(id)sender{
    [self mz_dismissFormSheetControllerAnimated:YES completionHandler:nil];
}

-(void)viewWillAppear:(BOOL)animated{
    [titleLabel setCMEPFont];
    [descriptionLabel setCMEPFont];
    [tipLabel setCMEPFont];
    [self.view setBackgroundColor:[UIColor clearColor]];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
