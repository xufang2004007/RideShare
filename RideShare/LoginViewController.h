//
//  LoginViewController.h
//  RideShare
//
//  Created by 放放 on 14-1-13.
//  Copyright (c) 2014年 HKUST Green. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
//#import "FirstViewController.h"
//#import "TabBarViewController.h"

@interface LoginViewController : UIViewController


@property (weak, nonatomic) IBOutlet UISegmentedControl *identityField;
@property (weak, nonatomic) IBOutlet UITextField *emailField;
@property (weak, nonatomic) IBOutlet UITextField *passwordField;

- (IBAction)RegisterAction:(id)sender;
- (IBAction)LoginAction:(id)sender;

@end
