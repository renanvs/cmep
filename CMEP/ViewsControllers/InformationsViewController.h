//
//  InformationsViewController.h
//  CMEP
//
//  Created by renanvs on 8/29/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InformationsViewController : CMEPViewController<UITableViewDataSource, UITableViewDelegate>{
    __weak IBOutlet UITableView *informationTableView;
    NSArray *informationList;
}

@end
