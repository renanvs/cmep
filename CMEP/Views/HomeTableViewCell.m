//
//  MenuTableViewCell.m
//  CMEP
//
//  Created by renanvs on 8/27/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import "HomeTableViewCell.h"

@implementation HomeTableViewCell

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

-(void)setMenuItem:(NSDictionary*)menuItem{
    if (!menuItem) {
        NSLog(@"Celula com menuItem vazio");
        return;
    }
    
    NSString *title = [menuItem objectForKey:@"title"];
    NSString *subtitle = [menuItem objectForKey:@"subtitle"];
    NSString *imageName = [menuItem objectForKey:@"imageName"];
    
    titleLabel.text = title;
    subtitleLabel.text = subtitle;
    iconImage.image = [UIImage imageNamed:imageName];
}

@end
