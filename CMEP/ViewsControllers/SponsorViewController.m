//
//  SponsorViewController.m
//  CMEP
//
//  Created by renanvs on 8/29/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import "SponsorViewController.h"
#import "MZFormSheetController.h"
#import "SponsorHeaderView.h"

@interface SponsorViewController ()

@end

@implementation SponsorViewController

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
    sponsorDic = [[FakeModelManager sharedInstance] fakeSponsorDic];
    sponsorOrder = [[FakeModelManager sharedInstance] fakeSponsorOrderList];
}


-(void)viewWillAppear:(BOOL)animated{
    [self.view setBackgroundColor:[UIColor clearColor]];
}

-(IBAction)close:(id)sender{
    [self mz_dismissFormSheetControllerAnimated:YES completionHandler:nil];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SponsorCell" forIndexPath:indexPath];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"SponsorCell"];
    }
    
    NSDictionary *dic = [self objectWithIndex:indexPath];
    
    UIImageView *sponsorImage = (UIImageView*)[cell viewWithTag:2];
    
    sponsorImage.image = [UIImage imageNamed:[dic objectForKey:@"imagePath"]];
    
    return cell;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return sponsorDic.count;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    NSString *desireKey = [sponsorOrder objectAtIndex:section];
    NSArray *desireList = [sponsorDic objectForKey:desireKey];
    return desireList.count;
}

-(NSDictionary*)objectWithIndex:(NSIndexPath *)indexPath{
    NSString *desireKey = [sponsorOrder objectAtIndex:indexPath.section];
    NSArray *desireList = [sponsorDic objectForKey:desireKey];
    NSDictionary *dic = [desireList objectAtIndex:indexPath.row];
    return dic;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSDictionary *dic = [self objectWithIndex:indexPath];
    NSString *sponsorUrl = [dic objectForKey:@"url"];
    NSLog(@"%@",sponsorUrl);
    NSURL *url = [NSURL URLWithString:sponsorUrl];
    [[UIApplication sharedApplication] openURL:url];
}

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    SponsorHeaderView *shv = [Utils loadNibForName:@"SponsorHeaderView"];
    shv.sectionTitle.text = [self getIndexName:section];
    [shv.sectionTitle setCMEPFont];
    return shv;
}

-(NSString*)getIndexName:(NSInteger)section{
    //NSArray *allKeys = [sponsorDic allKeys];
    NSString *desireKey = [sponsorOrder objectAtIndex:section];
    return desireKey;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 45;
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    CGFloat sectionHeaderHeight = 45;
    if (scrollView.contentOffset.y<=sectionHeaderHeight&&scrollView.contentOffset.y>=0) {
        scrollView.contentInset = UIEdgeInsetsMake(-scrollView.contentOffset.y, 0, 0, 0);
    } else if (scrollView.contentOffset.y>=sectionHeaderHeight) {
        scrollView.contentInset = UIEdgeInsetsMake(-sectionHeaderHeight, 0, 0, 0);
    }
}

@end
