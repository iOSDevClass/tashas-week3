//
//  ViewController.h
//  tableOfColors
//
//  Created by Tatiana Jamison on 10/14/15.
//  Copyright © 2015 Bit Lore Institute. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) NSIndexPath *expandedIndexPath;

@end

