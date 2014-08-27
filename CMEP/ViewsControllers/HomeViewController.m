//
//  HomeViewController.m
//  CMEP
//
//  Created by renanvs on 8/27/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import "HomeViewController.h"
#import "HomeTableViewCell.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

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
    [[self navigationController] setNavigationBarHidden:YES];
    
    [self addOptionItens];
    // Do any additional setup after loading the view.
}

-(void)addOptionItens{
    NSDictionary *programDic = @{@"title":@"PROGRAMAÇÃO", @"subtitle":@"fique por dentro de tudo o que vai acontecer" ,@"imageName":@"icon_programacao"};
    NSDictionary *speakerDic = @{@"title":@"PALESTRANTES", @"subtitle":@"veja mais informações sobre os palestrantes" ,@"imageName":@"icon_palestrantes"};
    NSDictionary *networkDic = @{@"title":@"NETWORKING", @"subtitle":@"troque contatos profissionais" ,@"imageName":@"icon_networking"};
    NSDictionary *ratingDic =  @{@"title":@"AVALIAÇÃO DO EVENTO", @"subtitle":@"avalie nosso evento" ,@"imageName":@"icon_avaliacao"};
    
    menuItens = [[NSArray alloc] initWithObjects:programDic, speakerDic, networkDic, ratingDic, nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)openMenu:(id)sender {
    [self.viewDeckController openLeftView];
    //[self.viewDeckController openRightView];
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    CGFloat tableViewHeight = tableView.frame.size.height;
    CGFloat cellHeight = tableViewHeight/menuItens.count;
    return cellHeight;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellIdentifier = @"HomeTableViewCell";
    HomeTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (!cell) {
        cell = [Utils loadNibForName:cellIdentifier];
    }
    
    [cell setMenuItem:menuItens[indexPath.row]];
    
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return menuItens.count;
}

@end
