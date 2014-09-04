//
//  SponsorViewController.h
//  CMEP
//
//  Created by renanvs on 8/29/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SponsorViewController : UIViewController<UITableViewDataSource, UITableViewDelegate, UIScrollViewDelegate>{
    NSDictionary *sponsorDic;
    NSArray *sponsorOrder;
    __weak IBOutlet UITableView *sponsorTableView;
}

-(IBAction)close:(id)sender;

@end
