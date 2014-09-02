//
//  MenuViewController.m
//  CMEP
//
//  Created by renanvs on 8/27/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import "MenuViewController.h"
#import "PresentationViewController.h"
#import "HomeViewController.h"
#import "MZFormSheetController.h"

@interface MenuViewController ()

@end

@implementation MenuViewController

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
    [self addMenuItens];
    //[self addFonts];
    // Do any additional setup after loading the view.
}


-(void)addMenuItens{
    NSMutableArray *menuOptionsTemp = [[NSMutableArray alloc] init];
    
    NSDictionary *presentation = @{@"name":@"APRESENTAÇÃO", @"type": [NSNumber numberWithInt:MenuOptionPresentation]};
    [menuOptionsTemp addObject:presentation];
    NSDictionary *rating = @{@"name":@"AVALIAÇÃO \nDO EVENTO", @"type": [NSNumber numberWithInt:MenuOptionRating]};
    [menuOptionsTemp addObject:rating];
    NSDictionary *checkin = @{@"name":@"CHECK-IN", @"type": [NSNumber numberWithInt:MenuOptionCheckin]};
    [menuOptionsTemp addObject:checkin];
    NSDictionary *exhibitor = @{@"name":@"EXPOSITORES", @"type": [NSNumber numberWithInt:MenuOptionExhibitor]};
    [menuOptionsTemp addObject:exhibitor];
    NSDictionary *information = @{@"name":@"INFORMAÇÕES ÚTEIS", @"type": [NSNumber numberWithInt:MenuOptionInformation]};
    [menuOptionsTemp addObject:information];
    NSDictionary *map = @{@"name":@"MAPA DO EVENTO", @"type": [NSNumber numberWithInt:MenuOptionMap]};
    [menuOptionsTemp addObject:map];
    NSDictionary *networking = @{@"name":@"NETWORKING", @"type": [NSNumber numberWithInt:MenuOptionNetworking]};
    [menuOptionsTemp addObject:networking];
    NSDictionary *speakers = @{@"name":@"PALESTRANTES", @"type": [NSNumber numberWithInt:MenuOptionSpeakers]};
    [menuOptionsTemp addObject:speakers];
    NSDictionary *sponsor = @{@"name":@"PATROCINADORES", @"type": [NSNumber numberWithInt:MenuOptionSponsor]};
    [menuOptionsTemp addObject:sponsor];
    NSDictionary *schedule = @{@"name":@"PROGRAMAÇÃO \nDO EVENTO", @"type": [NSNumber numberWithInt:MenuOptionSchedule]};
    [menuOptionsTemp addObject:schedule];
    NSDictionary *configuration = @{@"name":@"CONFIGURAÇÃO", @"type": [NSNumber numberWithInt:MenuOptionConfiguration]};
    [menuOptionsTemp addObject:configuration];

    
    menuOptions = [[NSArray alloc] initWithArray:menuOptionsTemp];
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellMenuIdentifier = @"cellMenuIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellMenuIdentifier forIndexPath:indexPath];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellMenuIdentifier];
    }
    
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    UILabel *label = (UILabel*)[cell viewWithTag:2];
    
    label.text = [[menuOptions objectAtIndex:indexPath.row] objectForKey:@"name"];
    [label setCMEPFont];
    
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return menuOptions.count;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    //NSArray *sheights = @[@50,@50,@50,@50,@50,@50,@50,@50,@50];
    MenuOption option = [[[menuOptions objectAtIndex:indexPath.row] objectForKey:@"type"] intValue];
    if (option == MenuOptionSponsor) {
        return 47;
    }else if (option == MenuOptionSchedule) {
        return 56;
    }else if (option == MenuOptionConfiguration || option == MenuOptionExhibitor) {
        return 46;
    }else{
        return 48;
    }
    
    //return [[sheights objectAtIndex:indexPath.row] floatValue];
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    MenuOption opt =  (MenuOption)[[[menuOptions objectAtIndex:indexPath.row] objectForKey:@"type"] intValue];
    
    if (opt == MenuOptionSponsor) {
        [self.viewDeckController closeOpenViewAnimated:YES completion:^(IIViewDeckController *controller, BOOL success) {
            UIViewController *svc = [CMEPUtils getControllerByType:MenuOptionSponsor];
            CGSize viewSize = self.view.frame.size;
            MZFormSheetController *mzc = [[MZFormSheetController alloc] initWithSize:viewSize viewController:svc];
            mzc.shouldCenterVertically = YES;
            mzc.transitionStyle = MZFormSheetTransitionStyleSlideFromLeft;
            [mzc presentAnimated:YES completionHandler:nil];
        }];
    }else if (opt == MenuOptionNetworking || opt == MenuOptionConfiguration) {
         [[[UIAlertView alloc] initWithTitle:@"ATENÇÃO" message:@"Em desenvolvimento" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil]show];
    }else{
        UIViewController *desireController = [CMEPUtils getControllerByType:opt];
        [self pushCenterController:desireController];
    }
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
        
        BOOL removeAllAndAdd = NO;
        for (UIViewController *vc in navController.viewControllers) {
            if ([desireController isKindOfClass:[vc class]]) {
                removeAllAndAdd = YES;
            }
        }
        
        if (removeAllAndAdd) {
            NSMutableArray *listViewsControllers = [[NSMutableArray alloc] initWithArray:navController.viewControllers];
            for (UIViewController *vc in navController.viewControllers) {
                if (![vc isKindOfClass:[HomeViewController class]]) {
                    [listViewsControllers removeObject:vc];
                }
            }
            
            navController.viewControllers = listViewsControllers;
        }
        
        [navController pushViewController:desireController animated:YES];
    }];
}

@end
