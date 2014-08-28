//
//  ScheduleViewController.m
//  CMEP
//
//  Created by renanvs on 8/28/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import "ScheduleViewController.h"
#import "ScheduleCell.h"
#import "ScheduleModel.h"

@interface ScheduleViewController ()

@end

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
    scheduleList = [[NSArray alloc] initWithArray:[[FakeModelManager sharedInstance] fakeScheduleModelList]];
    // Do any additional setup after loading the view.
}

- (IBAction)back:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)showMenu:(id)sender {
    [self.viewDeckController openLeftView];
}

- (IBAction)goToNextPossibleDay:(id)sender {
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellIdentifier = @"ScheduleCell";
    
    ScheduleModel *sheduleModel =  [scheduleList objectAtIndex:indexPath.row];
    
    ScheduleCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    if (!cell) {
        cell = [Utils loadNibForName:cellIdentifier];
    }
    
    [cell setScheduleModel:sheduleModel];
    
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return scheduleList.count;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    ScheduleCell *currentCell = (ScheduleCell*)[tableView cellForRowAtIndexPath:indexPath];
    CGFloat cellHeight = [currentCell getCellHeight];
    return cellHeight;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //todo: clarear celular
    
}

@end
