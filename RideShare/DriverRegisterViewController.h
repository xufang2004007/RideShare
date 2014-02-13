//
//  DriverRegisterViewController.h
//  RideShare
//
//  Created by 放放 on 14-2-12.
//  Copyright (c) 2014年 HKUST Green. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DriverRegisterViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *emailField;
@property (weak, nonatomic) IBOutlet UITextField *passwordField;
@property (weak, nonatomic) IBOutlet UITextField *reenterPasswordField;

@property (weak, nonatomic) IBOutlet UISegmentedControl *genderField;

- (IBAction)RegisterAction:(id)sender;
- (IBAction)LoginAction:(id)sender;

@end
