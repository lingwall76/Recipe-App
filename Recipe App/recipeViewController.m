//
//  recipeViewController.m
//  Recipe App
//
//  Created by Kaleo Kim on 4/29/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "recipeViewController.h"
#import "RecipesTableViewDataSource.h"
#import "RecipeDetailViewController.h"
#import "RARecipes.h"

@interface recipeViewController () <UITableViewDelegate>

@property (strong, nonatomic) UITableView *tableView;
@property (strong, nonatomic) RecipesTableViewDataSource *dataSource;


@end

@implementation recipeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Recipes";
    
    self.dataSource = [RecipesTableViewDataSource new];
    
    self.tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    [self.view addSubview:self.tableView];
    
    [self.dataSource registerTableView:self.tableView];
    self.tableView.dataSource = self.dataSource;
    self.tableView.delegate = self;
}



- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    RecipeDetailViewController *detailViewController = [RecipeDetailViewController new];
    
    detailViewController.recipeIndex = indexPath.row;
    
    
    [self.navigationController pushViewController:detailViewController animated:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    
    
    

    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
