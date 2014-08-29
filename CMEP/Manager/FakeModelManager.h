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
}

@property (nonatomic) NSArray *fakeScheduleModelList0;
@property (nonatomic) NSArray *fakeScheduleModelList1;
@property (nonatomic) NSArray *fakeInformationList;

+(id)sharedInstance;

@end
