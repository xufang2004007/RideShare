//
//  StudentRegisterViewController.h
//  RideShare
//
//  Created by 放放 on 14-2-12.
//  Copyright (c) 2014年 HKUST Green. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HttpRequest.h"

@interface StudentRegisterViewController : UIViewController


@property (weak, nonatomic) IBOutlet UITextField *firstNameField;
@property (weak, nonatomic) IBOutlet UITextField *lastNameField;
@property (weak, nonatomic) IBOutlet UITextField *preferenceNameField;
@property (weak, nonatomic) IBOutlet UITextField *emailField;
@property (weak, nonatomic) IBOutlet UITextField *passwordField;
@property (weak, nonatomic) IBOutlet UITextField *reenterPasswordField;

@property (weak, nonatomic) IBOutlet UISegmentedControl *genderField;

- (IBAction)RegisterAction:(id)sender;
- (IBAction)LoginAction:(id)sender;

@end
