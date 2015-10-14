//
//  Color.h
//  tableOfColors
//
//  Created by Tatiana Jamison on 10/14/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Color : NSObject

@property (strong, nonatomic) NSString *colorName;
@property (strong, nonatomic) UIColor *colorActual;
@property (strong, nonatomic) NSString *colorDescription;

+(NSMutableArray *)getArrayOfColors;

- (instancetype)initWithName:(NSString *)colorName andColor:(UIColor *)colorActual andDescription:(NSString *)colorDescription;

@end
