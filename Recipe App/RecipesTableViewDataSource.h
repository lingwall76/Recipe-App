//
//  RecipesTableViewDataSource.h
//  Recipe App
//
//  Created by Kaleo Kim on 4/29/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>


@import UIKit;


@interface RecipesTableViewDataSource : NSObject <UITableViewDataSource>

- (void)registerTableView:(UITableView *)tableView;

@end
