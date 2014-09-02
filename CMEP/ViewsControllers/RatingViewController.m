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
    
    topbarTitle = @"AVALIAÇÃO DO EVENTO";    
    [super viewWillAppear:animated];
    //self.viewDeckController.panningMode = IIViewDeckNoPanning;
    
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    //self.viewDeckController.panningMode = IIViewDeckFullViewPanning;
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
    static NSString *cellIdentifier0 = @"RatingCell";
    static NSString *cellIdentifier1 = @"CMEPButtonCell";
    
    if (indexPath.row == ratingList.count) {
        buttonCell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier1];
        [buttonCell.button setCMEPFont];
        [buttonCell.button addTarget:self action:@selector(sendRating) forControlEvents:UIControlEventTouchUpInside];
        return buttonCell;
    }else{
        RatingCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier0];
        
        if (!cell) {
            cell = (RatingCell*)[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier0];
        }
        
        cell.delegate = self;
        [cell setCurrentController:self];
        NSDictionary *infoDic = [ratingList objectAtIndex:indexPath.row];
        [cell setRatingDictionary:infoDic];
        
        return cell;
    }
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == ratingList.count) {
        NSLog(@"ta %f", tableView.rowHeight);
        return 98;
    }else{
        return tableView.rowHeight;
    }
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return (ratingList.count + 1);
}

-(void)ratingCellRating:(float)ratingValue WithDictionary:(NSDictionary *)dictionary{
    NSLog(@"Rating value: %f", ratingValue);
}

- (void)sendRating{
    NSLog(@"sending rating");
}

@end
