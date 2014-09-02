//
//  PresentationAboutViewController.m
//  CMEP
//
//  Created by renanvs on 8/28/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import "PresentationAboutViewController.h"

@implementation PresentationAboutViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setupWebView];
    // Do any additional setup after loading the view.
}

-(void)setupWebView{
    NSString *htmlFile = [[NSBundle mainBundle] pathForResource:@"presentation_about" ofType:@"html" inDirectory:@"WebPages"];
    NSString *htmlSource = [NSString stringWithContentsOfFile:htmlFile encoding:NSUTF8StringEncoding error:nil];
    [presentationWebView setBackgroundColor:[UIColor clearColor]];
    
    for (UIScrollView *scrollView in presentationWebView.subviews) {
        scrollView.bounces = NO;
    }
    
    presentationWebView.opaque = NO;
    presentationWebView.dataDetectorTypes = ~UIDataDetectorTypePhoneNumber;
    
    [presentationWebView loadHTMLString:htmlSource baseURL:nil];

}

-(void)viewWillAppear:(BOOL)animated{
    topbarTitle = @"renan";
    [super viewWillAppear:animated];
}

@end
