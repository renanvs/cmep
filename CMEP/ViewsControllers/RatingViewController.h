//
//  RatingViewController.h
//  CMEP
//
//  Created by renanvs on 9/1/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RatingCell.h"
#import "CMEPButtonCell.h"

@interface RatingViewController : CMEPViewController<UITableViewDataSource, UITableViewDelegate, RatingCellDelegate>{
    __weak IBOutlet UITableView *ratingTableView;
    NSArray *ratingList;
    CMEPButtonCell *buttonCell;
}

@end
