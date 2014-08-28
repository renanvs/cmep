//
//  FakeModelManager.h
//  CMEP
//
//  Created by renanvs on 8/28/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FakeModelManager : NSObject{
    NSArray *fakeScheduleModelList;
}

@property (nonatomic) NSArray *fakeScheduleModelList;

+(id)sharedInstance;

@end
