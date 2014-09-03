//
//  ExhibitorCell.h
//  CMEP
//
//  Created by renanvs on 9/3/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ExhibitorCell : UITableViewCell{
    __weak IBOutlet UIImageView *exhibitorImage;
    __weak IBOutlet UILabel *nameLabel;
    __weak IBOutlet UILabel *addressLabel;
    __weak IBOutlet UIWebView *webView;
    NSString *descriptionText;
}

-(void)setExhibitorDictionary:(NSDictionary*)dic;


@end
