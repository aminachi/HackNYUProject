//
//  ViewController1.h
//  wander
//
//  Created by Ashley Sidoryk on 3/7/20.
//  Copyright © 2020 Ashley Sidoryk. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ViewController1 : UIViewController

@property (weak, nonatomic) IBOutlet UISegmentedControl *controllerSeg;

@property (strong, nonatomic) NSMutableArray *cur;

@property (weak, nonatomic) IBOutlet UILabel *proName;


@end

NS_ASSUME_NONNULL_END
