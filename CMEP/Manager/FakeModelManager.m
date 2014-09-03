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
@synthesize fakeScheduleModelList0, fakeScheduleModelList1, fakeInformationList, fakeSpeakersList, fakeRatingList, fakeSponsorDic, fakeSponsorOrderList, fakeExhibitorListList;
SynthensizeSingleTon(FakeModelManager);

-(id)init{
    self = [super init];
    if (self){
        [self createFakeModel];
        [self createFakeInformation];
        [self createFakeSpeakers];
        [self createFakeRating];
        [self createFakeSponsors];
        [self createFakeExhibitors];
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

-(void)createFakeModelList1{
    ScheduleModel *sm0 = [[ScheduleModel alloc] init];
    sm0.type = ScheduleTypeStart;
    sm0.start = @"11h30";
    sm0.end = @"12h30";
    sm0.titles = [[NSArray alloc] initWithObjects:@"titulo0", nil];
    sm0.subtitles = [[NSArray alloc] initWithObjects:@"subtitulo0", nil];
    sm0.dayIndex = 0;
    
    ScheduleModel *sm1 = [[ScheduleModel alloc] init];
    sm1.type = ScheduleTypeCoquetel;
    sm1.start = @"11h30";
    sm1.end = @"12h30";
    sm1.titles = [[NSArray alloc] initWithObjects:@"titulo1", nil];
    sm1.subtitles = [[NSArray alloc] initWithObjects:@"subtitulo1subtitulo1subtitulo1subtitulo1subtitulo1subtitulo1subtitulo1subtitulo1subtitulo1 subtitulo1subtitulo1subtitulo1subtitulo1 subtitulo1subtitulo1subtitulo1subtitulo1subtitulo1subtitulo1subtitulo1 subtitulo1", nil];
    sm1.dayIndex = 0;
    
    ScheduleModel *sm2 = [[ScheduleModel alloc] init];
    sm2.type = ScheduleTypeLecture;
    sm2.start = @"11h30";
    sm2.end = @"12h30";
    sm2.titles = [[NSArray alloc] initWithObjects:@"titulo2", @"titulo3", nil];
    sm2.subtitles = [[NSArray alloc] initWithObjects:@"subtitulo2", @"subtitulo3", nil];
    sm2.dayIndex = 0;
    
    ScheduleModel *sm3 = [[ScheduleModel alloc] init];
    sm3.type = ScheduleTypeStart;
    sm3.start = @"11h30";
    sm3.end = @"12h30";
    sm3.titles = [[NSArray alloc] initWithObjects:@"titulo3", nil];
    sm3.subtitles = [[NSArray alloc] initWithObjects:@"subtitulo3", nil];
    sm3.dayIndex = 0;
    
    ScheduleModel *sm4 = [[ScheduleModel alloc] init];
    sm4.type = ScheduleTypeCoffee;
    sm4.start = @"11h30";
    sm4.end = @"12h30";
    sm4.titles = [[NSArray alloc] initWithObjects:@"titulo4", nil];
    sm4.subtitles = [[NSArray alloc] initWithObjects:@"subtitulo4", nil];
    sm4.dayIndex = 0;
    
    ScheduleModel *sm5 = [[ScheduleModel alloc] init];
    sm5.type = ScheduleTypeCoquetel;
    sm5.start = @"11h30";
    sm5.end = @"12h30";
    sm5.titles = [[NSArray alloc] initWithObjects:@"titulo5", nil];
    sm5.subtitles = [[NSArray alloc] initWithObjects:@"subtitulo5", nil];
    sm5.dayIndex = 0;
    
    ScheduleModel *sm6 = [[ScheduleModel alloc] init];
    sm6.type = ScheduleTypeLecture;
    sm6.start = @"11h30";
    sm6.end = @"12h30";
    sm6.titles = [[NSArray alloc] initWithObjects:@"titulo6", nil];
    sm6.subtitles = [[NSArray alloc] initWithObjects:@"subtitulo6", nil];
    sm6.dayIndex = 0;
    
    fakeScheduleModelList1 = [[NSArray alloc] initWithObjects:sm0, sm1, sm2, sm3, sm4, sm5, sm6, nil];
}

-(void)createFakeModelList0{
    ScheduleModel *sm0 = [[ScheduleModel alloc] init];
    sm0.type = ScheduleTypeLecture;
    sm0.start = @"11h30";
    sm0.end = @"12h30";
    sm0.titles = [[NSArray alloc] initWithObjects:@"sample0", nil];
    sm0.subtitles = [[NSArray alloc] initWithObjects:@"sample0", nil];
    sm0.dayIndex = 0;
    
    ScheduleModel *sm1 = [[ScheduleModel alloc] init];
    sm1.type = ScheduleTypeStart;
    sm1.start = @"11h30";
    sm1.end = @"12h30";
    sm1.titles = [[NSArray alloc] initWithObjects:@"sample1", nil];
    sm1.subtitles = [[NSArray alloc] initWithObjects:@"sample1 sample1sample1 sample1sample1sample1 sample1sample1 sample1  sample1sample1", nil];
    sm1.dayIndex = 0;
    
    ScheduleModel *sm2 = [[ScheduleModel alloc] init];
    sm2.type = ScheduleTypeCoquetel;
    sm2.start = @"11h30";
    sm2.end = @"12h30";
    sm2.titles = [[NSArray alloc] initWithObjects:@"sample2", @"sample2", nil];
    sm2.subtitles = [[NSArray alloc] initWithObjects:@"sample2 sample2sample2 sample2", @"sample2sample2 sample2 sample2", nil];
    sm2.dayIndex = 0;
    
    ScheduleModel *sm3 = [[ScheduleModel alloc] init];
    sm3.type = ScheduleTypeCoquetel;
    sm3.start = @"11h30";
    sm3.end = @"12h30";
    sm3.titles = [[NSArray alloc] initWithObjects:@"titulo3", nil];
    sm3.subtitles = [[NSArray alloc] initWithObjects:@"subtitulo3", nil];
    sm3.dayIndex = 0;
    
    ScheduleModel *sm4 = [[ScheduleModel alloc] init];
    sm4.type = ScheduleTypeCoffee;
    sm4.start = @"11h30";
    sm4.end = @"12h30";
    sm4.titles = [[NSArray alloc] initWithObjects:@"titulo4", nil];
    sm4.subtitles = [[NSArray alloc] initWithObjects:@"subtitulo4", nil];
    sm4.dayIndex = 0;
    
    ScheduleModel *sm5 = [[ScheduleModel alloc] init];
    sm5.type = ScheduleTypeStart;
    sm5.start = @"11h30";
    sm5.end = @"12h30";
    sm5.titles = [[NSArray alloc] initWithObjects:@"titulo5", nil];
    sm5.subtitles = [[NSArray alloc] initWithObjects:@"subtitulo5", nil];
    sm5.dayIndex = 0;
    
    ScheduleModel *sm6 = [[ScheduleModel alloc] init];
    sm6.type = ScheduleTypeLecture;
    sm6.start = @"11h30";
    sm6.end = @"12h30";
    sm6.titles = [[NSArray alloc] initWithObjects:@"titulo6", nil];
    sm6.subtitles = [[NSArray alloc] initWithObjects:@"subtitulo6", nil];
    sm6.dayIndex = 0;
    
    ScheduleModel *sm7 = [[ScheduleModel alloc] init];
    sm7.type = ScheduleTypeLecture;
    sm7.start = @"11h30";
    sm7.end = @"12h30";
    sm7.titles = [[NSArray alloc] initWithObjects:@"titulo7", nil];
    sm7.subtitles = [[NSArray alloc] initWithObjects:@"subtitulo7", nil];
    sm7.dayIndex = 0;
    
    ScheduleModel *sm8 = [[ScheduleModel alloc] init];
    sm8.type = ScheduleTypeLecture;
    sm8.start = @"11h30";
    sm8.end = @"12h30";
    sm8.titles = [[NSArray alloc] initWithObjects:@"titulo8", nil];
    sm8.subtitles = [[NSArray alloc] initWithObjects:@"subtitulo8", nil];
    sm8.dayIndex = 0;
    
    ScheduleModel *sm9 = [[ScheduleModel alloc] init];
    sm9.type = ScheduleTypeLecture;
    sm9.start = @"11h30";
    sm9.end = @"12h30";
    sm9.titles = [[NSArray alloc] initWithObjects:@"titulo9", nil];
    sm9.subtitles = [[NSArray alloc] initWithObjects:@"subtitulo9", nil];
    sm9.dayIndex = 0;
    
    fakeScheduleModelList0 = [[NSArray alloc] initWithObjects:sm0, sm1, sm2, sm3, sm4, sm5, sm6, sm7, sm8, nil];
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

-(void)createFakeSpeakers{
    NSMutableDictionary *dic0 = [[NSMutableDictionary alloc] init];
    [dic0 setObject:@"ANDERSON GOLVEIA" forKey:@"name"];
    [dic0 setObject:@"Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex " forKey:@"description"];
    [dic0 setObject:@"sampleSpeakerImage0" forKey:@"image"];
    
    NSMutableDictionary *dic1 = [[NSMutableDictionary alloc] init];
    [dic1 setObject:@"DENISE LOPES" forKey:@"name"];
    [dic1 setObject:@"Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex " forKey:@"description"];
    [dic1 setObject:@"sampleSpeakerImage1" forKey:@"image"];
    
    NSMutableDictionary *dic2 = [[NSMutableDictionary alloc] init];
    [dic2 setObject:@"FERNANDO SANTOS" forKey:@"name"];
    [dic2 setObject:@"Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex " forKey:@"description"];
    [dic2 setObject:@"sampleSpeakerImage2" forKey:@"image"];
    
    NSMutableDictionary *dic3 = [[NSMutableDictionary alloc] init];
    [dic3 setObject:@"FERNANDO GIMENEZ" forKey:@"name"];
    [dic3 setObject:@"Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex " forKey:@"description"];
    [dic3 setObject:@"sampleSpeakerImage0" forKey:@"image"];
    
    fakeSpeakersList = [[NSArray alloc] initWithObjects:dic0, dic1, dic2, dic3, nil];
}

-(void)createFakeRating{
    NSMutableDictionary *dic0 = [[NSMutableDictionary alloc] init];
    [dic0 setObject:@"Tilte0" forKey:@"title"];
    [dic0 setObject:@"event" forKey:@"type"];
    [dic0 setObject:@"Lorem ipsum dolor sit er elit lamet, consectetaur cilli" forKey:@"description"];
    
    NSMutableDictionary *dic1 = [[NSMutableDictionary alloc] init];
    [dic1 setObject:@"Tilte1" forKey:@"title"];
    [dic1 setObject:@"lecture" forKey:@"type"];
    [dic1 setObject:@"Lorem ipsum dolor sit er elit lamet, consectetaur cilli" forKey:@"description"];
    
    NSMutableDictionary *dic2 = [[NSMutableDictionary alloc] init];
    [dic2 setObject:@"Tilte2" forKey:@"title"];
    [dic2 setObject:@"app" forKey:@"type"];
    [dic2 setObject:@"Lorem ipsum dolor sit er elit lamet, consectetaur cilli" forKey:@"description"];
    
    fakeRatingList = [[NSArray alloc] initWithObjects:dic0, dic1, dic2, nil];
}

-(void)createFakeSponsors{
    NSMutableDictionary *bradesco = [[NSMutableDictionary alloc] init];
    [bradesco setObject:@"http://www.bradesco.com.br" forKey:@"url"];
    [bradesco setObject:@"bradesco.png" forKey:@"imagePath"];
    
    NSMutableDictionary *aci = [[NSMutableDictionary alloc] init];
    [aci setObject:@"http://www.aciworldwide.com/" forKey:@"url"];
    [aci setObject:@"aci.png" forKey:@"imagePath"];
    
    NSMutableDictionary *cielo = [[NSMutableDictionary alloc] init];
    [cielo setObject:@"http://www.cielo.com.br" forKey:@"url"];
    [cielo setObject:@"cielo.png" forKey:@"imagePath"];
    
    NSMutableDictionary *elo = [[NSMutableDictionary alloc] init];
    [elo setObject:@"http://www.elo.com.br" forKey:@"url"];
    [elo setObject:@"elo.png" forKey:@"imagePath"];
    
    NSArray *ar0 = [[NSArray alloc] initWithObjects:bradesco, nil];
    NSArray *ar1 = [[NSArray alloc] initWithObjects:aci, cielo, elo, nil];
    
    fakeSponsorDic = [[NSMutableDictionary alloc] init];
    [fakeSponsorDic setObject:ar0 forKey:@"DIAMANTE"];
    [fakeSponsorDic setObject:ar1 forKey:@"PRATA"];
    
    fakeSponsorOrderList = [[NSArray alloc] initWithObjects:@"DIAMANTE", @"PRATA", nil];
}

-(void)createFakeExhibitors{
    NSMutableDictionary *dic0 = [[NSMutableDictionary alloc] init];
    [dic0 setObject:@"ITAUCARD" forKey:@"name"];
    [dic0 setObject:@"RUA A - 01" forKey:@"address"];
    [dic0 setObject:@"Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex " forKey:@"description"];
    [dic0 setObject:@"itaucardLogo" forKey:@"image"];
    
    NSMutableDictionary *dic1 = [[NSMutableDictionary alloc] init];
    [dic1 setObject:@"MASTERCARD" forKey:@"name"];
    [dic1 setObject:@"RUA A - 01" forKey:@"address"];
    [dic1 setObject:@"Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex " forKey:@"description"];
    [dic1 setObject:@"mastercardLogo" forKey:@"image"];
    
    NSMutableDictionary *dic2 = [[NSMutableDictionary alloc] init];
    [dic2 setObject:@"VISA" forKey:@"name"];
    [dic2 setObject:@"RUA A - 01" forKey:@"address"];
    [dic2 setObject:@"Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex " forKey:@"description"];
    [dic2 setObject:@"visaLogo" forKey:@"image"];
    
    fakeExhibitorListList = [[NSArray alloc] initWithObjects:dic0, dic1, dic2, nil];
}

@end
