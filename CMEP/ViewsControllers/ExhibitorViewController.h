//
//  ExhibitorViewController.h
//  CMEP
//
//  Created by renanvs on 9/3/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ExhibitorViewController : CMEPViewController{
    __weak IBOutlet UITableView *exhibitorTableView;
    NSArray *exhibitorList;
}



@end
