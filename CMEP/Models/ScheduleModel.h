//
//  ScheduleModel.h
//  CMEP
//
//  Created by renanvs on 8/28/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    ScheduleTypeStart,
    ScheduleTypeCoffee,
    ScheduleTypeLecture,
    ScheduleTypeCoquetel,
} ScheduleType;

@interface ScheduleModel : NSObject{
    ScheduleType type;
    NSArray *titles;
    NSArray *subtitles;
    NSString *start;
    NSString *end;
    int dayIndex;
}

@property (nonatomic) ScheduleType type;
@property (nonatomic) NSArray *titles;
@property (nonatomic) NSArray *subtitles;
@property (nonatomic) NSString *start;
@property (nonatomic) NSString *end;
@property (nonatomic) int dayIndex;

@end
