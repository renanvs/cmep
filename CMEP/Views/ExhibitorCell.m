//
//  ExhibitorCell.m
//  CMEP
//
//  Created by renanvs on 9/3/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import "ExhibitorCell.h"

@implementation ExhibitorCell

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
    // Configure the view for the selected state
}

-(void)setExhibitorDictionary:(NSDictionary*)dic{
    exhibitorImage.image = [UIImage imageNamed:[dic objectForKey:@"image"]];
    nameLabel.text = [dic objectForKey:@"name"];
    addressLabel.text = [dic objectForKey:@"address"];
    descriptionText = [dic objectForKey:@"description"];
    [nameLabel setCMEPFont];
    [addressLabel setCMEPFont];
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
