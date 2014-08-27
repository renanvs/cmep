//
//  MenuTableViewCell.h
//  CMEP
//
//  Created by renanvs on 8/27/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeTableViewCell : UITableViewCell{
    __weak IBOutlet UILabel *subtitleLabel;
    __weak IBOutlet UILabel *titleLabel;
    __weak IBOutlet UIImageView *iconImage;
}

-(void)setMenuItem:(NSDictionary*)menuItem;

@end
