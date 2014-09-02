//
//  RatingViewController.h
//  CMEP
//
//  Created by renanvs on 9/1/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RatingCell.h"

@interface RatingViewController : CMEPViewController<UITableViewDataSource, UITableViewDelegate, RatingCellDelegate>{
    __weak IBOutlet UITableView *ratingTableView;
    __weak IBOutlet UIButton *ratingButton;
    NSArray *ratingList;
}

- (IBAction)sendRating:(id)sender;

@end
