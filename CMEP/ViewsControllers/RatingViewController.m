//
//  RatingViewController.m
//  CMEP
//
//  Created by renanvs on 9/1/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import "RatingViewController.h"

@interface RatingViewController ()

@end

@implementation RatingViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)viewWillAppear:(BOOL)animated{
    
    topbarTitle = @"renan";    
    [super viewWillAppear:animated];
    self.viewDeckController.panningMode = IIViewDeckNoPanning;
    
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.viewDeckController.panningMode = IIViewDeckFullViewPanning;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    ratingList = [[FakeModelManager sharedInstance] fakeRatingList];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellIdentifier = @"RatingCell";
    RatingCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (!cell) {
        cell = (RatingCell*)[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    cell.delegate = self;
    [cell setCurrentController:self];
    NSDictionary *infoDic = [ratingList objectAtIndex:indexPath.row];
    [cell setRatingDictionary:infoDic];
    
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return ratingList.count;
}

-(void)ratingCellRating:(float)ratingValue WithDictionary:(NSDictionary *)dictionary{
    NSLog(@"Rating value: %f", ratingValue);
}

- (IBAction)sendRating:(id)sender{
    
}

@end
