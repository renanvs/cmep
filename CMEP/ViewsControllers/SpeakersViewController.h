//
//  SpeakersViewController.h
//  CMEP
//
//  Created by renanvs on 8/29/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SpeakersViewController : CMEPViewController{
    __weak IBOutlet UITableView *speakerTableView;
    NSArray *speakersList;
}

@end
