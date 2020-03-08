//
//  ViewController4.m
//  wander
//
//  Created by Ashley Sidoryk on 3/7/20.
//  Copyright © 2020 Ashley Sidoryk. All rights reserved.
//

#import "ViewController4.h"

@interface ViewController4 ()

@property (strong, nonatomic) NSMutableArray *uresults;

@end

@implementation ViewController4

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.uresults = [[NSMutableArray alloc] init];

    NSMutableArray *user0 = [NSMutableArray arrayWithObjects: @"Natalie P.", @"abc", @"np123@nyu.edu", @"4572357473", nil];

    [self.uresults addObject:user0];


    NSMutableArray *user1 = [NSMutableArray arrayWithObjects: @"Jake M.", @"park234", @"jake345@usc.edu", @"4567895678", nil];

    [self.uresults addObject:user1];

    NSMutableArray *user2 = [NSMutableArray arrayWithObjects: @"Priya R.", @"marker86", @"pr456@nyu.edu", @"3453465678", nil];

    [self.uresults addObject:user2];

    NSMutableArray *user3 = [NSMutableArray arrayWithObjects: @"Max Z.", @"cookie7564", @"myz869@nyu.edu", @"4567892345", nil];

    [self.uresults addObject:user3];

    NSMutableArray *user4 = [NSMutableArray arrayWithObjects: @"Liz C.", @"fish765", @"lc768@nyu.edu", @"1234456754", nil];

    [self.uresults addObject:user4];
    
    
    
    self.name1.text = self.uresults[1][0];
    self.name2.text = self.uresults[2][0];
    self.name3.text = self.uresults[3][0];
    self.name4.text = self.uresults[4][0];
}

- (IBAction)backToGoPressed:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];

}

- (IBAction)requestPressed:(id)sender {
    [self performSegueWithIdentifier:@"matched" sender:self];
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
