//
//  InformationTableViewCell.h
//  CMEP
//
//  Created by renanvs on 8/29/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InformationTableViewCell : UITableViewCell{
    __weak IBOutlet UILabel *titleLabel;
    __weak IBOutlet UILabel *timeLabel;
    __weak IBOutlet UIWebView *webView;
    NSDictionary *infoDictionary;
    NSString *descriptionText;
}

-(void)setInformationDictionary:(NSDictionary*)infoDic;

@end
