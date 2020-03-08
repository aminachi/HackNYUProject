//
//  ViewController.m
//  wander
//
//  Created by Ashley Sidoryk on 3/6/20.
//  Copyright © 2020 Ashley Sidoryk. All rights reserved.
//

#import "ViewController.h"
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

     NSMutableArray *user0 = [NSMutableArray arrayWithObjects: @"richardL", @"abc", @"richard", @"45", @"9", @"10", @"0", @"richard.jpg", nil];

     [self.users addObject:user0];


     NSMutableArray *user1 = [NSMutableArray arrayWithObjects: @"Prince Hamlet", @"Elsinore Castle, Denmark", @"100", @"0", @"10", @"10", @"10", @"younghamlet.jpg", nil];

     [self.users addObject:user1];

     NSMutableArray *user2 = [NSMutableArray arrayWithObjects: @"King Lear", @"Leicester Castle, England", @"100", @"22", @"10", @"6", @"0", @"lear.jpg", nil];

     [self.users addObject:user2];

     NSMutableArray *user3 = [NSMutableArray arrayWithObjects: @"King Henry VIII", @"Whitehall Palace, England", @"62", @"60", @"7", @"6", @"7", @"henry8.jpg", nil];

     [self.users addObject:user3];

     NSMutableArray *user4 = [NSMutableArray arrayWithObjects: @"Queen Elizabeth", @"Richmond Palace, England", @"90", @"100", @"9", @"10", @"10", @"elizabeth.jpg", nil];

     [self.users addObject:user4];
}

- (IBAction)signbutPressed:(id)sender {
    [self performSegueWithIdentifier:@"createAcc" sender:self];
}

- (IBAction)loginbutPressed:(id)sender {

    NSString * uemail = self.email.text;
    NSString * upassword = self.password.text;



    //NSMutableArray * user = [NSMutableArray arrayWithObjects: uemail, upassword, nil];

    if(self.email.text == nil || [self.email.text isEqualToString:@""] || self.password.text == nil || [self.password.text isEqualToString:@""]) {
        self.error.text = @"Error: Please Enter All Fields!";
    }

    else {
        BOOL flag;
        self.error.text = @"";
        if((flag = TRUE)) {
        for(int i = 0; i < self.users.count-1; i++) {
            //for(int j = 0; j < self.cur.count-1; j++) {
                if(self.users[i][2] == uemail && self.users[i][1] == upassword) {
                    NSString *proname = self.users[i][0];
                    self.cur = [NSMutableArray arrayWithObjects: proname, uemail, upassword, nil];
                    [self performSegueWithIdentifier:@"afterLogin" sender:self];
                }
            }
        }
        else{
            (flag = FALSE);
            self.error.text = @"Email & Password do not match!";
        }

    }

}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"afterLogin"]) {
            ViewController1 *vcc = segue.destinationViewController;
            vcc.cur = self.cur;
        } //else {
           // ViewController3 * vc =  segue.destinationViewController;

           // vc.students = self.students;
       // }
    }



@end
