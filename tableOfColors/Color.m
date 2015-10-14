//
//  Color.m
//  tableOfColors
//
//  Created by Tatiana Jamison on 10/14/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import "Color.h"

@implementation Color


+(NSMutableArray *)getArrayOfColors
{
    NSMutableArray *arrayOfColors = [[NSMutableArray alloc] init];
    [arrayOfColors addObject:[[Color alloc] initWithName:@"red" andColor:[UIColor redColor] andDescription:@"the infernal glory of passion"]];
    [arrayOfColors addObject:[[Color alloc] initWithName:@"orange" andColor:[UIColor orangeColor] andDescription:@"the eternal flame of the midnight sun"]];
    [arrayOfColors addObject:[[Color alloc] initWithName:@"yellow" andColor:[UIColor yellowColor] andDescription:@"the color of a flying blade"]];
    [arrayOfColors addObject:[[Color alloc] initWithName:@"green" andColor:[UIColor greenColor] andDescription:@"grass and limes, not cows"]];
    [arrayOfColors addObject:[[Color alloc] initWithName:@"blue" andColor:[UIColor blueColor] andDescription:@"water and skies, sometimes"]];
    [arrayOfColors addObject:[[Color alloc] initWithName:@"purple" andColor:[UIColor purpleColor] andDescription:@"the color of wampum shells"]];
    return arrayOfColors;
}

- (instancetype)initWithName:(NSString *)colorName andColor:(UIColor *)colorActual andDescription:(NSString *)colorDescription
{
    self = [super init];
    if (self) {
        self.colorName = colorName;
        self.colorActual = colorActual;
        self.colorDescription = colorDescription;
    }
    return self;
}

@end
