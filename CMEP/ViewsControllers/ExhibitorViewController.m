//
//  ExhibitorViewController.m
//  CMEP
//
//  Created by renanvs on 9/3/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import "ExhibitorViewController.h"
#import "ExhibitorCell.h"

@interface ExhibitorViewController ()

@end

@implementation ExhibitorViewController

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
    exhibitorList = [[FakeModelManager sharedInstance] fakeExhibitorListList];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellIdentifier = @"ExhibitorCell";
    ExhibitorCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (!cell) {
        cell = (ExhibitorCell*)[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    NSDictionary *exhibitorDic = [exhibitorList objectAtIndex:indexPath.row];
    [cell setExhibitorDictionary: exhibitorDic];
    
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return exhibitorList.count;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
}

-(void)viewWillAppear:(BOOL)animated{
    topbarTitle = @"EXPOSITORES";
    [super viewWillAppear:animated];
}

@end
