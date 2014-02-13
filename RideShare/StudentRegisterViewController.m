//
//  StudentRegisterViewController.m
//  RideShare
//
//  Created by 放放 on 14-2-12.
//  Copyright (c) 2014年 HKUST Green. All rights reserved.
//

#import "StudentRegisterViewController.h"

@interface StudentRegisterViewController ()

@end

@implementation StudentRegisterViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (void)checkFieldsComplete{
    if([_nameField.text isEqualToString:@""]||[_emailField.text isEqualToString:@""] ||[_passwordField.text isEqualToString:@""] ||[_reenterPasswordField.text isEqualToString:@""])
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error!" message:@"You need to complete all fields!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [alert show];
    }else
    {
        [self checkPasswordMatch];
    }
}

- (void)checkPasswordMatch
{
    if(![_passwordField.text isEqualToString:( _reenterPasswordField.text)])
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error!" message:@"Passwords don't match!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [alert show];
    }else
    {
        [self registerNewUser];
    }
}

-(void)registerNewUser
{
    /*NSLog(@"Registering....");
     PFUser *User=[PFUser user];
     User.username=_nameField.text;
     User.email=_emailField.text;
     User.password=_passwordField.text;
     
     [User signUpInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
     if(!error)
     {
     NSLog(@"Registration Successful!");
     [self performSegueWithIdentifier:@"Login" sender:self];
     }else
     {
     NSLog(@"There is an error in registration!");
     }
     }];*/
}

- (BOOL)textFieldShouldReturn:(UITextField *)theTextField {
    [theTextField resignFirstResponder];
    return YES;
}

- (IBAction)RegisterAction:(id)sender
{
    [_nameField resignFirstResponder];
    [_emailField resignFirstResponder];
    [_passwordField resignFirstResponder];
    [_reenterPasswordField resignFirstResponder];
    [self checkFieldsComplete];
}

-(IBAction)LoginAction:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
