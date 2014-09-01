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
    }else if (menuOption == MenuOptionSchedule) {
        desireController = [sb instantiateViewControllerWithIdentifier:@"ScheduleViewController"];
    }else if (menuOption == MenuOptionInformation) {
        desireController = [sb instantiateViewControllerWithIdentifier:@"InformationsViewController"];
    }else if (menuOption == MenuOptionSponsor) {
        desireController = [sb instantiateViewControllerWithIdentifier:@"SponsorViewController"];
    }else if (menuOption == MenuOptionMap) {
        desireController = [sb instantiateViewControllerWithIdentifier:@"MapViewController"];
    }else if (menuOption == MenuOptionSpeakers) {
        desireController = [sb instantiateViewControllerWithIdentifier:@"SpeakersViewController"];
    }else if (menuOption == MenuOptionNetworking) {
        desireController = [sb instantiateViewControllerWithIdentifier:@""];
    }else if (menuOption == MenuOptionRating) {
        desireController = [sb instantiateViewControllerWithIdentifier:@"RatingViewController"];
    }else if (menuOption == MenuOptionConfiguration) {
        desireController = [sb instantiateViewControllerWithIdentifier:@""];
    }
    
    return desireController;
}

@end


@implementation UILabel (cmep)

-(void)setCMEPFont{
    NSString *fontName = @"HomizioNova";
    CGFloat fontSize = self.font.pointSize;
    self.font = [UIFont fontWithName:fontName size:fontSize];
}

@end

@implementation UIButton (cmep)

-(void)setCMEPFont{
    [[self titleLabel]setCMEPFont];
}

@end