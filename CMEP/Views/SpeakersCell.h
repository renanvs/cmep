//
//  SpeakersCell.h
//  CMEP
//
//  Created by renanvs on 8/29/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SpeakersCell : UITableViewCell{
    __weak IBOutlet UIImageView *profileImage;
    __weak IBOutlet UILabel *nameLabel;
    __weak IBOutlet UIWebView *webView;
    NSString *descriptionText;
}

-(void)setSpeakerDictionary:(NSDictionary*)dic;

@end
