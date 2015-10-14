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
    NSIndexPath *lastCellClicked;
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
    
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
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
//    if ([indexPath compare:self.expandedIndexPath] == NSOrderedSame) {
//        return 100;  // expanded height
//    } else {
//        return 40;  // regular height
//    }
    
    if ([indexPath isEqual:lastCellClicked])
    {
        return 100;  // expanded height
    } else {
        return 40;  // regular height
    }

}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    lastCellClicked = indexPath;
    
//    CustomTVCell *cell = [tableView cellForRowAtIndexPath:indexPath];
//    cell.backgroundColor = cell.customColor.colorActual;

    [tableView beginUpdates];
    [tableView endUpdates];    
}

- (IBAction)pressButtonVC:(id)sender {
    
}

@end
