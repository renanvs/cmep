//
//  ScheduleViewController.m
//  CMEP
//
//  Created by renanvs on 8/28/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import "ScheduleViewController.h"
#import "ScheduleModel.h"

@implementation ScheduleViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    currentDayIndex = 0;
    scheduleListDay0 = [[NSArray alloc] initWithArray:[[FakeModelManager sharedInstance] fakeScheduleModelList0]];
    scheduleListDay1 = [[NSArray alloc] initWithArray:[[FakeModelManager sharedInstance] fakeScheduleModelList1]];
    currentScheduleList = scheduleListDay0;
}

- (IBAction)goToNextPossibleDay:(id)sender {
    if (currentDayIndex == 0) {
        dayLabel.text = @"05";
        currentDayIndex++;
        currentScheduleList = scheduleListDay1;
    }else{
        dayLabel.text = @"04";
        currentDayIndex--;
        currentScheduleList = scheduleListDay0;
    }
    [scheduleTableView reloadData];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellIdentifier = @"ScheduleCell";
    
    ScheduleModel *scheduleModel =  [currentScheduleList objectAtIndex:indexPath.row];
    
    ScheduleCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (!cell) {
        cell = [Utils loadNibForName:cellIdentifier];
    }
    
    if (indexPath.row == 0) {
        CGRect columnRect = cell.columnView.frame;
        columnRect.origin.y = 0;
        columnRect.size.height = cell.frame.size.height;
        cell.columnView.frame = columnRect;
        columnRect = cell.columnView.frame;
        columnRect.origin.y = columnRect.origin.y + 10;
        //columnRect.size.height = columnRect.size.height - 10;
        cell.columnView.frame = columnRect;
    }
    
    [cell setScheduleModel:scheduleModel];
    
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return currentScheduleList.count;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    cellSample =  [Utils loadNibForName:@"ScheduleCell"];
    ScheduleModel *scheduleModel =  [currentScheduleList objectAtIndex:indexPath.row];
    CGFloat cellHeight = [cellSample getCellHeightWithScheduleModel:scheduleModel];
    return cellHeight;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //todo: clarear celular
    ScheduleCell *cell = (ScheduleCell*)[tableView cellForRowAtIndexPath:indexPath];
    [cell setSelectedLayout];
    //[cell setAlpha:1];
}

-(void)viewWillAppear:(BOOL)animated{
    topbarTitle = @"PROGRAMAÇÃO";
    [super viewWillAppear:animated];
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    [self scrollToCurrentHour];
}

-(void)scrollToCurrentHour{
    NSIndexPath *i = [NSIndexPath indexPathForItem:5 inSection:0];
    [scheduleTableView scrollToRowAtIndexPath:i atScrollPosition:UITableViewScrollPositionMiddle animated:YES];
}

@end
