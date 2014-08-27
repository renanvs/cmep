//
//  MenuViewController.m
//  CMEP
//
//  Created by renanvs on 8/27/14.
//  Copyright (c) 2014 renanvs. All rights reserved.
//

#import "MenuViewController.h"
#import "PresentationViewController.h"

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
    cellHeight = 42;
    [[self navigationController] setNavigationBarHidden:YES];
    [self addMenuItens];
    // Do any additional setup after loading the view.
}

-(void)addMenuItens{
    NSMutableArray *menuOptionsTemp = [[NSMutableArray alloc] init];
    
    NSDictionary *presentation = @{@"name":@"APRESENTAÇÃO", @"type": [NSNumber numberWithInt:MenuOptionPresentation]};
    [menuOptionsTemp addObject:presentation];
    NSDictionary *schedule = @{@"name":@"PROGRAMAÇÃO DO EVENTO", @"type": [NSNumber numberWithInt:MenuOptionSchedule]};
    [menuOptionsTemp addObject:schedule];
    NSDictionary *information = @{@"name":@"INFORMAÇÕES ÚTEIS", @"type": [NSNumber numberWithInt:MenuOptionInformation]};
    [menuOptionsTemp addObject:information];
    NSDictionary *sponsor = @{@"name":@"PATROCINADORES", @"type": [NSNumber numberWithInt:MenuOptionSponsor]};
    [menuOptionsTemp addObject:sponsor];
    NSDictionary *map = @{@"name":@"MAPA DO EVENTO", @"type": [NSNumber numberWithInt:MenuOptionMap]};
    [menuOptionsTemp addObject:map];
    NSDictionary *speakers = @{@"name":@"PALESTRANTES", @"type": [NSNumber numberWithInt:MenuOptionSpeakers]};
    [menuOptionsTemp addObject:speakers];
    NSDictionary *networking = @{@"name":@"NETWORKING", @"type": [NSNumber numberWithInt:MenuOptionNetworking]};
    [menuOptionsTemp addObject:networking];
    NSDictionary *rating = @{@"name":@"AVALIAÇÃO DO EVENTO", @"type": [NSNumber numberWithInt:MenuOptionRating]};
    [menuOptionsTemp addObject:rating];
    NSDictionary *configuration = @{@"name":@"CONFIGURAÇÃO", @"type": [NSNumber numberWithInt:MenuOptionConfiguration]};
    [menuOptionsTemp addObject:configuration];
    
    menuOptions = [[NSArray alloc] initWithArray:menuOptionsTemp];
    
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

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellMenuIdentifier = @"cellMenuIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellMenuIdentifier forIndexPath:indexPath];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellMenuIdentifier];
    }
    
    UILabel *label = (UILabel*)[cell viewWithTag:2];
    
    label.text = [[menuOptions objectAtIndex:indexPath.row] objectForKey:@"name"];
    
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return menuOptions.count;
}

//static NSArray *heights = @[@"dsf",@"sdfsdf"];
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSArray *sheights = @[@42,@40];
    cellHeight = cellHeight + (indexPath.row*1.5);
    return cellHeight;
}

- (IBAction)closeMenu:(id)sender {
    [self.viewDeckController closeOpenView];
}

- (IBAction)showPresentation:(id)sender {
    [self.viewDeckController closeOpenViewAnimated:YES completion:^(IIViewDeckController *controller, BOOL success) {
        UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main_iPhone" bundle:nil];
        PresentationViewController *pvc = [sb instantiateViewControllerWithIdentifier:@"PresentationViewController"];
        self.viewDeckController.centerController = pvc;;
    }];
    
}

@end
