//
//  MapViewController.h
//  CMEP
//
//  Created by renanvs on 8/29/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MapViewController : UIViewController{
    __weak IBOutlet UIView *mapContainer;
}

- (IBAction)back:(id)sender;

- (IBAction)showMenu:(id)sender;


@end
