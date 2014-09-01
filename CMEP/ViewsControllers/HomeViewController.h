//
//  HomeViewController.h
//  CMEP
//
//  Created by renanvs on 8/27/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>{
    __weak IBOutlet UITableView *menuTableView;
    __weak IBOutlet UIButton *sponsorButton;
    NSArray *menuItens;
}

- (IBAction)openMenu:(id)sender;
- (IBAction)showSponsors:(id)sender;

@end
