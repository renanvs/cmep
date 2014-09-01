//
//  RatingViewController.h
//  CMEP
//
//  Created by renanvs on 9/1/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RatingCell.h"

@interface RatingViewController : UIViewController<UITableViewDataSource, UITableViewDelegate, RatingCellDelegate>{
    __weak IBOutlet UITableView *ratingTableView;
    NSArray *ratingList;
}

- (IBAction)back:(id)sender;
- (IBAction)showMenu:(id)sender;
- (IBAction)sendRating:(id)sender;

@end
