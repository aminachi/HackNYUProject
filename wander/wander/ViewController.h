//
//  ViewController.h
//  wander
//
//  Created by Ashley Sidoryk on 3/6/20.
//  Copyright © 2020 Ashley Sidoryk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *signUp;

@property (weak, nonatomic) IBOutlet UIButton *login;

@property (weak, nonatomic) IBOutlet UITextField *email;

@property (weak, nonatomic) IBOutlet UITextField *password;

@property (weak, nonatomic) IBOutlet UILabel *error;


@end

