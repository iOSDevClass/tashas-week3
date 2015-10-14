//
//  CustomTVCell.h
//  tableOfColors
//
//  Created by Tatiana Jamison on 10/14/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Color.h"

@interface CustomTVCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *custLabelColor;
@property (weak, nonatomic) IBOutlet UILabel *custLabelDescriptor;

@property (strong, nonatomic) Color *customColor;

@end
