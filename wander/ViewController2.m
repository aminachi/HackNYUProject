//
//  ViewController2.m
//  wander
//
//  Created by Ashley Sidoryk on 3/7/20.
//  Copyright © 2020 Ashley Sidoryk. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)backMistakePressed:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (IBAction)createPressed:(id)sender {
    
    NSString * nuname = self.newname.text;
    NSString * nupassword = self.newpassword.text;
    NSString * nuemail = self.newemail.text;
    
   //NSMutableArray * user = [NSMutableArray arrayWithObjects: uemail, upassword, nil];
    
    if(self.newname.text == nil || [self.newname.text isEqualToString:@""] || self.newpassword.text == nil || [self.newpassword.text isEqualToString:@""] || self.newemail.text == nil || [self.newemail.text isEqualToString:@""]) {
        self.errornew.text = @"Error: Please Enter All Fields!";
    }
    
    else {
      self.errornew.text = @"";
    [self performSegueWithIdentifier:@"afterAcc" sender:self];
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
