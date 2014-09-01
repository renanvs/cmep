//
//  PresentationViewController.m
//  CMEP
//
//  Created by renanvs on 8/27/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import "PresentationViewController.h"
#import "MenuViewController.h"

@implementation PresentationViewController

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
    [self setupWebView];
    // Do any additional setup after loading the view.
}

-(void)setupWebView{
    NSString *htmlFile = [[NSBundle mainBundle] pathForResource:@"presentation" ofType:@"html" inDirectory:@"WebPages"];
    NSString *htmlSource = [NSString stringWithContentsOfFile:htmlFile encoding:NSUTF8StringEncoding error:nil];
    [presentationWebView setBackgroundColor:[UIColor clearColor]];
    
    for (UIScrollView *scrollView in presentationWebView.subviews) {
        scrollView.bounces = NO;
    }
    
    presentationWebView.opaque = NO;
    presentationWebView.dataDetectorTypes = ~UIDataDetectorTypePhoneNumber;
    [presentationWebView loadHTMLString:htmlSource baseURL:nil];
//    NSURL *url = [NSURL URLWithString:@"http://localhost:8080/presentation.html"];
//    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    //[presentationWebView loadRequest:request];
}

- (IBAction)back:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)showMenu:(id)sender {
    [self.viewDeckController openLeftView];
}

- (IBAction)aboutAbecs:(id)sender {
    
}

@end
