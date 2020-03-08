//
//  ViewController5.m
//  wander
//
//  Created by Ashley Sidoryk on 3/8/20.
//  Copyright © 2020 Ashley Sidoryk. All rights reserved.
//

#import "ViewController5.h"

@interface ViewController5 ()

@property (strong, nonatomic) NSMutableArray *mresults;;

@end

@implementation ViewController5

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSMutableArray *user4 = [NSMutableArray arrayWithObjects: @"Liz C.", @"fish765", @"lc768@nyu.edu", @"1234456754", nil];

    [self.mresults addObject:user4];
    
    self.namematch.text = self.mresults[0][0];
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
