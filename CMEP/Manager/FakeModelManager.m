//
//  FakeModelManager.m
//  CMEP
//
//  Created by renanvs on 8/28/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import "FakeModelManager.h"
#import "Schedulemodel.h"

@implementation FakeModelManager
@synthesize fakeScheduleModelList;
SynthensizeSingleTon(FakeModelManager);

-(id)init{
    self = [super init];
    if (self){
        [self createFakeModel];
    }
    return self;
}

//ScheduleType type;
//NSArray *titles;
//NSArray *subtitles;
//NSString *start;
//NSString *end;
-(void)createFakeModel{
    ScheduleModel *sm0 = [[ScheduleModel alloc] init];
    sm0.type = ScheduleTypeA;
    sm0.start = @"11h30";
    sm0.end = @"12h30";
    sm0.titles = [[NSArray alloc] initWithObjects:@"titulo0", nil];
    sm0.subtitles = [[NSArray alloc] initWithObjects:@"subtitulo0", nil];
    
    ScheduleModel *sm1 = [[ScheduleModel alloc] init];
    sm1.type = ScheduleTypeA;
    sm1.start = @"11h30";
    sm1.end = @"12h30";
    sm1.titles = [[NSArray alloc] initWithObjects:@"titulo1", nil];
    sm1.subtitles = [[NSArray alloc] initWithObjects:@"subtitulo1subtitulo1subtitulo1subtitulo1subtitulo1subtitulo1subtitulo1subtitulo1subtitulo1 subtitulo1subtitulo1subtitulo1subtitulo1 subtitulo1subtitulo1subtitulo1subtitulo1subtitulo1subtitulo1subtitulo1 subtitulo1", nil];
    
    ScheduleModel *sm2 = [[ScheduleModel alloc] init];
    sm2.type = ScheduleTypeA;
    sm2.start = @"11h30";
    sm2.end = @"12h30";
    sm2.titles = [[NSArray alloc] initWithObjects:@"titulo2", @"titulo3", nil];
    sm2.subtitles = [[NSArray alloc] initWithObjects:@"subtitulo2", @"subtitulo3", nil];
    
    ScheduleModel *sm3 = [[ScheduleModel alloc] init];
    sm3.type = ScheduleTypeA;
    sm3.start = @"11h30";
    sm3.end = @"12h30";
    sm3.titles = [[NSArray alloc] initWithObjects:@"titulo3", nil];
    sm3.subtitles = [[NSArray alloc] initWithObjects:@"subtitulo3", nil];
    
    ScheduleModel *sm4 = [[ScheduleModel alloc] init];
    sm4.type = ScheduleTypeA;
    sm4.start = @"11h30";
    sm4.end = @"12h30";
    sm4.titles = [[NSArray alloc] initWithObjects:@"titulo4", nil];
    sm4.subtitles = [[NSArray alloc] initWithObjects:@"subtitulo4", nil];
    
    ScheduleModel *sm5 = [[ScheduleModel alloc] init];
    sm5.type = ScheduleTypeA;
    sm5.start = @"11h30";
    sm5.end = @"12h30";
    sm5.titles = [[NSArray alloc] initWithObjects:@"titulo5", nil];
    sm5.subtitles = [[NSArray alloc] initWithObjects:@"subtitulo5", nil];
    
    ScheduleModel *sm6 = [[ScheduleModel alloc] init];
    sm6.type = ScheduleTypeA;
    sm6.start = @"11h30";
    sm6.end = @"12h30";
    sm6.titles = [[NSArray alloc] initWithObjects:@"titulo6", nil];
    sm6.subtitles = [[NSArray alloc] initWithObjects:@"subtitulo6", nil];
    
    fakeScheduleModelList = [[NSArray alloc] initWithObjects:sm0, sm1, sm2, sm3, sm4, sm5, sm6, nil];
}

@end
