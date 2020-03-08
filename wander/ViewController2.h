//
//  ViewController2.h
//  wander
//
//  Created by Ashley Sidoryk on 3/7/20.
//  Copyright © 2020 Ashley Sidoryk. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ViewController2 : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *create;

@property (weak, nonatomic) IBOutlet UITextField *newname;

@property (weak, nonatomic) IBOutlet UITextField *newpassword;

@property (weak, nonatomic) IBOutlet UITextField *newemail;

@property (weak, nonatomic) IBOutlet UILabel *errornew;

@property (weak, nonatomic) IBOutlet UIButton *backMistake;


@end

NS_ASSUME_NONNULL_END
