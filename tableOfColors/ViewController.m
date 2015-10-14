//
//  ViewController.m
//  tableOfColors
//
//  Created by Tatiana Jamison on 10/14/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import "ViewController.h"
#import "CustomTVCell.h"
#import "Color.h"

@interface ViewController ()

{
    NSMutableArray *arrayOfColors;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    arrayOfColors = [Color getArrayOfColors];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellIdentifier = @"cell";
    
    CustomTVCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (!cell) {
        cell = [[CustomTVCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    Color *colorAtRow = [arrayOfColors objectAtIndex:indexPath.row];
    
    cell.customColor = colorAtRow;
    cell.custLabelColor.text = colorAtRow.colorName;
    cell.custLabelDescriptor.text = colorAtRow.colorDescription;
    
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [arrayOfColors count];
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
//    return 40;
    if ([indexPath compare:self.expandedIndexPath] == NSOrderedSame) {
        return 100;  // expanded height
    } else {
        return 40;  // regular height
    }
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView beginUpdates];
    if ([indexPath compare:self.expandedIndexPath] == NSOrderedSame)
    {
        self.expandedIndexPath = nil;
    }
    else
    {
        self.expandedIndexPath = indexPath;
    }
    
    [tableView endUpdates];
}

- (IBAction)pressButtonVC:(id)sender {
    
}

@end
