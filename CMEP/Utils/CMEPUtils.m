//
//  CMEPUtils.m
//  CMEP
//
//  Created by renanvs on 8/28/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import "CMEPUtils.h"

@implementation CMEPUtils

+(UIViewController*)getControllerByType:(MenuOption)menuOption{
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main_iPhone" bundle:nil];
    UIViewController *desireController = nil;
    
    if (menuOption == MenuOptionPresentation) {
        desireController = [sb instantiateViewControllerWithIdentifier:@"PresentationViewController"];
    }else if (menuOption == MenuOptionPresentation) {
        desireController = [sb instantiateViewControllerWithIdentifier:@""];
    }else if (menuOption == MenuOptionSchedule) {
        desireController = [sb instantiateViewControllerWithIdentifier:@"ScheduleViewController"];
    }else if (menuOption == MenuOptionInformation) {
        desireController = [sb instantiateViewControllerWithIdentifier:@""];
    }else if (menuOption == MenuOptionSponsor) {
        desireController = [sb instantiateViewControllerWithIdentifier:@""];
    }else if (menuOption == MenuOptionMap) {
        desireController = [sb instantiateViewControllerWithIdentifier:@""];
    }else if (menuOption == MenuOptionSpeakers) {
        desireController = [sb instantiateViewControllerWithIdentifier:@""];
    }else if (menuOption == MenuOptionNetworking) {
        desireController = [sb instantiateViewControllerWithIdentifier:@""];
    }else if (menuOption == MenuOptionRating) {
        desireController = [sb instantiateViewControllerWithIdentifier:@""];
    }else if (menuOption == MenuOptionConfiguration) {
        desireController = [sb instantiateViewControllerWithIdentifier:@""];
    }
    
    return desireController;
}

@end