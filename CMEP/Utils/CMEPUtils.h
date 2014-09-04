//
//  CMEPUtils.h
//  CMEP
//
//  Created by renanvs on 8/28/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    MenuOptionPresentation,
    MenuOptionSchedule,
    MenuOptionInformation,
    MenuOptionSponsor,
    MenuOptionMap,
    MenuOptionSpeakers,
    MenuOptionNetworking,
    MenuOptionRating,
    MenuOptionConfiguration,
    MenuOptionCheckin,
    MenuOptionExhibitor,
    MenuOptionLectureRating,
    MenuOptionScheduleNotification
    
} MenuOption;

@interface CMEPUtils : NSObject

+(id)sharedInstance;

+(UIViewController*)getControllerByType:(MenuOption)menuOption;

@end

@interface UILabel (cmep)

-(void)setCMEPFont;

@end

@interface UIButton (cmep)

-(void)setCMEPFont;

@end
