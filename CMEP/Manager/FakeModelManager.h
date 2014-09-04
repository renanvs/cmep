//
//  FakeModelManager.h
//  CMEP
//
//  Created by renanvs on 8/28/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FakeModelManager : NSObject{
    NSArray *fakeScheduleModelList0;
    NSArray *fakeScheduleModelList1;
    NSArray *fakeInformationList;
    NSArray *fakeSpeakersList;
    NSArray *fakeRatingList;
    NSMutableDictionary *fakeSponsorDic;
    NSArray *fakeSponsorOrderList;
    NSArray *fakeExhibitorListList;
}

@property (nonatomic) NSArray *fakeScheduleModelList0;
@property (nonatomic) NSArray *fakeScheduleModelList1;
@property (nonatomic) NSArray *fakeInformationList;
@property (nonatomic) NSArray *fakeSpeakersList;
@property (nonatomic) NSArray *fakeRatingList;
@property (nonatomic) NSMutableDictionary *fakeSponsorDic;
@property (nonatomic) NSArray *fakeSponsorOrderList;
@property (nonatomic) NSArray *fakeExhibitorListList;

+(id)sharedInstance;

@end
