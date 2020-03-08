//
//  ViewController1.m
//  wander
//
//  Created by Ashley Sidoryk on 3/7/20.
//  Copyright © 2020 Ashley Sidoryk. All rights reserved.
//

#import "ViewController1.h"

@interface ViewController1 ()

@end

@implementation ViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.proName.text = self.cur[0];
}

- (IBAction)segChanged:(id)sender {
    int index = (int) self.controllerSeg.selectedSegmentIndex;
    
    if (index == 1) {
    self.controllerSeg.selectedSegmentIndex = 0;
        [self performSegueWithIdentifier:@"letsGo" sender:self];
        
    }
    
    if (index == 2) {
    self.controllerSeg.selectedSegmentIndex = 0;
        [self performSegueWithIdentifier:@"signedOut" sender:self];

        
    }
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
