//
//  MenuViewController.h
//  CMEP
//
//  Created by renanvs on 8/27/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum {
    MenuOptionPresentation,
    MenuOptionSchedule,
    MenuOptionInformation,
    MenuOptionSponsor,
    MenuOptionMap,
    MenuOptionSpeakers,
    MenuOptionNetworking,
    MenuOptionRating,
    MenuOptionConfiguration
    
} MenuOption;

@interface MenuViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>{
    __weak IBOutlet UITableView *menuTableView;
    NSArray *menuOptions;
    CGFloat cellHeight;
}

@end
