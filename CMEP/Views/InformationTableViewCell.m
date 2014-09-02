//
//  InformationTableViewCell.m
//  CMEP
//
//  Created by renanvs on 8/29/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import "InformationTableViewCell.h"

@implementation InformationTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    [self setSelectionStyle:UITableViewCellSelectionStyleNone];
    [titleLabel setCMEPFont];
    [timeLabel setCMEPFont];
    // Configure the view for the selected state
}

-(void)setInformationDictionary:(NSDictionary*)infoDic{
    titleLabel.text = [infoDic objectForKey:@"title"];
    timeLabel.text = [infoDic objectForKey:@"time"];
    descriptionText = [infoDic objectForKey:@"text"];
    [self setupWebView];
}

-(void)setupWebView{
    NSString *htmlFile = [[NSBundle mainBundle] pathForResource:@"information_text" ofType:@"html" inDirectory:@"WebPages"];
    NSString *htmlSource = [NSString stringWithContentsOfFile:htmlFile encoding:NSUTF8StringEncoding error:nil];
    htmlSource = [htmlSource stringByReplacingOccurrencesOfString:@"_replace0_" withString:descriptionText];
    [webView setBackgroundColor:[UIColor clearColor]];
    
    for (UIScrollView *scrollView in webView.subviews) {
        scrollView.bounces = NO;
    }
    
    webView.opaque = NO;
    [webView loadHTMLString:htmlSource baseURL:nil];
}

@end
