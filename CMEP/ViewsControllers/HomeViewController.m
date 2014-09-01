//
//  HomeViewController.m
//  CMEP
//
//  Created by renanvs on 8/27/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import "HomeViewController.h"
#import "HomeTableViewCell.h"
#import "MZFormSheetController.h"

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
}

-(void)addOptionItens{
    NSDictionary *programDic = @{@"title":@"PROGRAMAÇÃO", @"subtitle":@"fique por dentro de tudo o que vai acontecer" ,@"imageName":@"icon_programacao", @"type": [NSNumber numberWithInt:MenuOptionSchedule]};
    NSDictionary *speakerDic = @{@"title":@"PALESTRANTES", @"subtitle":@"veja mais informações sobre os palestrantes" ,@"imageName":@"icon_palestrantes", @"type": [NSNumber numberWithInt:MenuOptionSpeakers]};
    NSDictionary *networkDic = @{@"title":@"NETWORKING", @"subtitle":@"troque contatos profissionais" ,@"imageName":@"icon_networking", @"type": [NSNumber numberWithInt:MenuOptionNetworking]};
    NSDictionary *ratingDic =  @{@"title":@"AVALIAÇÃO DO EVENTO", @"subtitle":@"avalie nosso evento" ,@"imageName":@"icon_avaliacao", @"type": [NSNumber numberWithInt:MenuOptionRating]};
    
    menuItens = [[NSArray alloc] initWithObjects:programDic, speakerDic, networkDic, ratingDic, nil];
}

- (IBAction)openMenu:(id)sender {
    [self.viewDeckController openLeftView];
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

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    MenuOption opt =  (MenuOption)[[[menuItens objectAtIndex:indexPath.row] objectForKey:@"type"] intValue];
    if (opt == MenuOptionNetworking) {
        [[[UIAlertView alloc] initWithTitle:@"ATENÇÃO" message:@"Em desenvolvimento" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil]show];
        return;
    }
    [self showControllerByMenuOption:opt];
}

-(void)showControllerByMenuOption:(MenuOption)optionType{
    UIViewController *desireController = [CMEPUtils getControllerByType:optionType];
    [self pushCenterController:desireController];
}

-(void)pushCenterController:(UIViewController*)desireController{
    
    if (!desireController) {
        NSLog(@"warning: Controller está vazior");
        return;
    }
    
    UINavigationController *navController = (UINavigationController*)self.viewDeckController.centerController;
    
    if ([desireController isKindOfClass:[navController.visibleViewController class]]) {
        [self.viewDeckController closeOpenView];
        return;
    }
    
    [self.viewDeckController closeOpenViewAnimated:YES completion:^(IIViewDeckController *controller, BOOL success) {
        [navController pushViewController:desireController animated:YES];
    }];
}

-(void)showSponsors:(id)sender{
    UIViewController *svc = [CMEPUtils getControllerByType:MenuOptionSponsor];
    CGSize viewSize = self.view.frame.size;
    MZFormSheetController *mzc = [[MZFormSheetController alloc] initWithSize:viewSize viewController:svc];
    mzc.shouldCenterVertically = YES;
    mzc.transitionStyle = MZFormSheetTransitionStyleSlideFromLeft;
    [mzc presentAnimated:YES completionHandler:nil];
    //[self.navigationController pushViewController:nil animated:YES];
}

@end
