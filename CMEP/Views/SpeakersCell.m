//
//  SpeakersCell.m
//  CMEP
//
//  Created by renanvs on 8/29/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import "SpeakersCell.h"

@implementation SpeakersCell

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

    // Configure the view for the selected state
}

-(void)setSpeakerDictionary:(NSDictionary*)dic{
    profileImage.image = [UIImage imageNamed:[dic objectForKey:@"image"]];
    nameLabel.text = [dic objectForKey:@"name"];
    descriptionText = [dic objectForKey:@"description"];
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
