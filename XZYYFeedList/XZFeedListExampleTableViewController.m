//
//  XZFeedListExampleTableViewController.m
//  XZYYFeedList
//
//  Created by kkxz on 2019/1/2.
//  Copyright © 2019 kkxz. All rights reserved.
//

#import "XZFeedListExampleTableViewController.h"
#import <YYKit/YYKit.h>

@interface XZFeedListExampleTableViewController ()
@property(nonatomic,strong)NSMutableArray *titles;
@property(nonatomic,strong)NSMutableArray *classNames;
@property(nonatomic,strong)NSMutableArray *images;
@end

@implementation XZFeedListExampleTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"FeedList";
    self.titles = @[].mutableCopy;
    self.classNames = @[].mutableCopy;
    self.images = @[].mutableCopy;
    
    [self addCell:@"Twitter" class:@"T1HomeTimelineItemsViewController" image:@"Twitter"];
    [self addCell:@"Weibo" class:@"WBStatusTimelineViewController" image:@"Weibo"];
    
    [self.tableView reloadData];
}

-(void)addCell:(NSString*)title class:(NSString*)className image:(NSString*)imageName {
    [self.titles addObject:title];
    [self.classNames addObject:className];
    [self.images addObject:[YYImage imageNamed:imageName]];
}

#pragma mark - TableView DataSource
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 48.0f;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _titles.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"XZ"];
    if(!cell){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"XZ"];
    }
    cell.textLabel.text = _titles[indexPath.row];
    cell.imageView.image = _images[indexPath.row];
    cell.imageView.clipsToBounds = YES;
    cell.imageView.layer.cornerRadius = 48 /2;
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *className = self.classNames[indexPath.row];
    Class class = NSClassFromString(className);
    if(class){
        UIViewController *ctrl = class.new;
        ctrl.title = _titles[indexPath.row];
        self.title = @"";
        [self.navigationController pushViewController:ctrl animated:YES];
    }
    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
