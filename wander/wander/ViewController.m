//
//  ViewController.m
//  wander
//
//  Created by Ashley Sidoryk on 3/6/20.
//  Copyright © 2020 Ashley Sidoryk. All rights reserved.
//

#import "ViewController.h"
#import "ViewController2.h"
#import "ViewController1.h"


@interface ViewController ()

@property (strong, nonatomic) NSMutableArray *users;
@property (strong, nonatomic) NSMutableArray *cur;
@property int index;
@property(readonly) NSUInteger count;

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

     self.users = [[NSMutableArray alloc] init];
     self.index = 0;

     NSMutableArray *user0 = [NSMutableArray arrayWithObjects: @"Natalie P.", @"abc", @"np123@nyu.edu", @"4572357473", nil];

     [self.users addObject:user0];


     NSMutableArray *user1 = [NSMutableArray arrayWithObjects: @"Jake M.", @"park234", @"jake345@usc.edu", @"4567895678", nil];

     [self.users addObject:user1];

     NSMutableArray *user2 = [NSMutableArray arrayWithObjects: @"Priya R.", @"marker86", @"pr456@nyu.edu", @"3453465678", nil];

     [self.users addObject:user2];

     NSMutableArray *user3 = [NSMutableArray arrayWithObjects: @"Max Z.", @"cookie7564", @"myz869@nyu.edu", @"4567892345", nil];

     [self.users addObject:user3];

     NSMutableArray *user4 = [NSMutableArray arrayWithObjects: @"Liz C.", @"fish765", @"lc768@nyu.edu", @"1234456754", nil];

     [self.users addObject:user4];
}

- (IBAction)signbutPressed:(id)sender {
    [self performSegueWithIdentifier:@"createAcc" sender:self];
}

- (IBAction)loginbutPressed:(id)sender {

    NSString * uemail = self.email.text;
    NSString * upassword = self.password.text;



    if(self.email.text == nil || [self.email.text isEqualToString:@""] || self.password.text == nil || [self.password.text isEqualToString:@""]) {
        self.error.text = @"Error: Please Enter All Fields!";
    }

    else {
        BOOL flag = FALSE;
        self.error.text = @"";
        //if((flag = TRUE)) {
        for(int i = 0; i < self.users.count-1; i++) {
            //for(int j = 0; j < self.cur.count-1; j++) {
            NSLog(self.users[i][2]);
            NSLog(self.users[i][1]);
            NSLog(uemail);
                  
            if([self.users[i][2] isEqualToString:uemail] && [self.users[i][1] isEqualToString: upassword]) {
                    NSString *proname = self.users[i][0];
                    self.cur = [NSMutableArray arrayWithObjects: proname, uemail, upassword, nil];
                    flag = TRUE;
                    [self performSegueWithIdentifier:@"afterLogin" sender:self];
                }
            //}
        }
        if (flag == FALSE){
            //(flag = FALSE);
            self.error.text = @"Email & Password do not match!";
        }
            
       // }
    }

}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//    if ([segue.identifier isEqualToString:@"afterAcc"]) {
//            ViewController2 *vc = segue.destinationViewController;
//            vc.users = vc.users;
//    }
    if ([segue.identifier isEqualToString:@"afterLogin"]) {
            ViewController1 *vcc = segue.destinationViewController;
            vcc.cur = self.cur;
        }
}


@end
