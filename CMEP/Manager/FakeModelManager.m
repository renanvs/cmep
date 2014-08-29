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
@synthesize fakeScheduleModelList0, fakeScheduleModelList1, fakeInformationList;
SynthensizeSingleTon(FakeModelManager);

-(id)init{
    self = [super init];
    if (self){
        [self createFakeModel];
        [self createFakeInformation];
    }
    return self;
}

//ScheduleType type;
//NSArray *titles;
//NSArray *subtitles;
//NSString *start;
//NSString *end;
-(void)createFakeModel{
    [self createFakeModelList0];
    [self createFakeModelList1];
}

-(void)createFakeModelList0{
    ScheduleModel *sm0 = [[ScheduleModel alloc] init];
    sm0.type = ScheduleTypeA;
    sm0.start = @"11h30";
    sm0.end = @"12h30";
    sm0.titles = [[NSArray alloc] initWithObjects:@"titulo0", nil];
    sm0.subtitles = [[NSArray alloc] initWithObjects:@"subtitulo0", nil];
    sm0.dayIndex = 0;
    
    ScheduleModel *sm1 = [[ScheduleModel alloc] init];
    sm1.type = ScheduleTypeA;
    sm1.start = @"11h30";
    sm1.end = @"12h30";
    sm1.titles = [[NSArray alloc] initWithObjects:@"titulo1", nil];
    sm1.subtitles = [[NSArray alloc] initWithObjects:@"subtitulo1subtitulo1subtitulo1subtitulo1subtitulo1subtitulo1subtitulo1subtitulo1subtitulo1 subtitulo1subtitulo1subtitulo1subtitulo1 subtitulo1subtitulo1subtitulo1subtitulo1subtitulo1subtitulo1subtitulo1 subtitulo1", nil];
    sm1.dayIndex = 0;
    
    ScheduleModel *sm2 = [[ScheduleModel alloc] init];
    sm2.type = ScheduleTypeA;
    sm2.start = @"11h30";
    sm2.end = @"12h30";
    sm2.titles = [[NSArray alloc] initWithObjects:@"titulo2", @"titulo3", nil];
    sm2.subtitles = [[NSArray alloc] initWithObjects:@"subtitulo2", @"subtitulo3", nil];
    sm2.dayIndex = 0;
    
    ScheduleModel *sm3 = [[ScheduleModel alloc] init];
    sm3.type = ScheduleTypeA;
    sm3.start = @"11h30";
    sm3.end = @"12h30";
    sm3.titles = [[NSArray alloc] initWithObjects:@"titulo3", nil];
    sm3.subtitles = [[NSArray alloc] initWithObjects:@"subtitulo3", nil];
    sm3.dayIndex = 0;
    
    ScheduleModel *sm4 = [[ScheduleModel alloc] init];
    sm4.type = ScheduleTypeA;
    sm4.start = @"11h30";
    sm4.end = @"12h30";
    sm4.titles = [[NSArray alloc] initWithObjects:@"titulo4", nil];
    sm4.subtitles = [[NSArray alloc] initWithObjects:@"subtitulo4", nil];
    sm4.dayIndex = 0;
    
    ScheduleModel *sm5 = [[ScheduleModel alloc] init];
    sm5.type = ScheduleTypeA;
    sm5.start = @"11h30";
    sm5.end = @"12h30";
    sm5.titles = [[NSArray alloc] initWithObjects:@"titulo5", nil];
    sm5.subtitles = [[NSArray alloc] initWithObjects:@"subtitulo5", nil];
    sm5.dayIndex = 0;
    
    ScheduleModel *sm6 = [[ScheduleModel alloc] init];
    sm6.type = ScheduleTypeA;
    sm6.start = @"11h30";
    sm6.end = @"12h30";
    sm6.titles = [[NSArray alloc] initWithObjects:@"titulo6", nil];
    sm6.subtitles = [[NSArray alloc] initWithObjects:@"subtitulo6", nil];
    sm6.dayIndex = 0;
    
    fakeScheduleModelList0 = [[NSArray alloc] initWithObjects:sm0, sm1, sm2, sm3, sm4, sm5, sm6, nil];
}

-(void)createFakeModelList1{
    ScheduleModel *sm0 = [[ScheduleModel alloc] init];
    sm0.type = ScheduleTypeA;
    sm0.start = @"11h30";
    sm0.end = @"12h30";
    sm0.titles = [[NSArray alloc] initWithObjects:@"sample0", nil];
    sm0.subtitles = [[NSArray alloc] initWithObjects:@"sample0", nil];
    sm0.dayIndex = 0;
    
    ScheduleModel *sm1 = [[ScheduleModel alloc] init];
    sm1.type = ScheduleTypeA;
    sm1.start = @"11h30";
    sm1.end = @"12h30";
    sm1.titles = [[NSArray alloc] initWithObjects:@"sample1", nil];
    sm1.subtitles = [[NSArray alloc] initWithObjects:@"sample0 sample0sample0 sample0sample0sample0 sample0sample0 sample0  sample0sample0", nil];
    sm1.dayIndex = 0;
    
    ScheduleModel *sm2 = [[ScheduleModel alloc] init];
    sm2.type = ScheduleTypeA;
    sm2.start = @"11h30";
    sm2.end = @"12h30";
    sm2.titles = [[NSArray alloc] initWithObjects:@"sample0", @"sample0", nil];
    sm2.subtitles = [[NSArray alloc] initWithObjects:@"sample0 sample0sample0 sample0", @"sample0sample0 sample0 sample0", nil];
    sm2.dayIndex = 0;
    
    ScheduleModel *sm3 = [[ScheduleModel alloc] init];
    sm3.type = ScheduleTypeA;
    sm3.start = @"11h30";
    sm3.end = @"12h30";
    sm3.titles = [[NSArray alloc] initWithObjects:@"titulo3", nil];
    sm3.subtitles = [[NSArray alloc] initWithObjects:@"subtitulo3", nil];
    sm3.dayIndex = 0;
    
    ScheduleModel *sm4 = [[ScheduleModel alloc] init];
    sm4.type = ScheduleTypeA;
    sm4.start = @"11h30";
    sm4.end = @"12h30";
    sm4.titles = [[NSArray alloc] initWithObjects:@"titulo4", nil];
    sm4.subtitles = [[NSArray alloc] initWithObjects:@"subtitulo4", nil];
    sm4.dayIndex = 0;
    
    ScheduleModel *sm5 = [[ScheduleModel alloc] init];
    sm5.type = ScheduleTypeA;
    sm5.start = @"11h30";
    sm5.end = @"12h30";
    sm5.titles = [[NSArray alloc] initWithObjects:@"titulo5", nil];
    sm5.subtitles = [[NSArray alloc] initWithObjects:@"subtitulo5", nil];
    sm5.dayIndex = 0;
    
    ScheduleModel *sm6 = [[ScheduleModel alloc] init];
    sm6.type = ScheduleTypeA;
    sm6.start = @"11h30";
    sm6.end = @"12h30";
    sm6.titles = [[NSArray alloc] initWithObjects:@"titulo6", nil];
    sm6.subtitles = [[NSArray alloc] initWithObjects:@"subtitulo6", nil];
    sm6.dayIndex = 0;
    
    fakeScheduleModelList1 = [[NSArray alloc] initWithObjects:sm0, sm1, sm2, sm3, sm4, sm5, sm6, nil];
}

-(void)createFakeInformation{
    NSMutableDictionary *dic0 = [[NSMutableDictionary alloc] init];
    [dic0 setObject:@"TITULO0" forKey:@"title"];
    [dic0 setObject:@"Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex " forKey:@"text"];
    [dic0 setObject:@"20/09/2014 -10h31" forKey:@"time"];
    
    NSMutableDictionary *dic1 = [[NSMutableDictionary alloc] init];
    [dic1 setObject:@"TITULO1" forKey:@"title"];
    [dic1 setObject:@"Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex " forKey:@"text"];
    [dic1 setObject:@"20/09/2014 -10h31" forKey:@"time"];
    
    NSMutableDictionary *dic2 = [[NSMutableDictionary alloc] init];
    [dic2 setObject:@"TITULO2" forKey:@"title"];
    [dic2 setObject:@"Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex " forKey:@"text"];
    [dic2 setObject:@"20/09/2014 -10h31" forKey:@"time"];
    
    NSMutableDictionary *dic3 = [[NSMutableDictionary alloc] init];
    [dic3 setObject:@"TITULO3" forKey:@"title"];
    [dic3 setObject:@"Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex " forKey:@"text"];
    [dic3 setObject:@"20/09/2014 -10h31" forKey:@"time"];
    
    NSMutableDictionary *dic4 = [[NSMutableDictionary alloc] init];
    [dic4 setObject:@"TITULO4" forKey:@"title"];
    [dic4 setObject:@"Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex " forKey:@"text"];
    [dic4 setObject:@"20/09/2014 -10h31" forKey:@"time"];
    
    fakeInformationList = [[NSArray alloc] initWithObjects:dic0, dic1, dic2, dic3, dic4, nil];
}

@end
