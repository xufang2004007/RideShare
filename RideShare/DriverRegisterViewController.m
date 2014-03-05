//
//  DriverRegisterViewController.m
//  RideShare
//
//  Created by 放放 on 14-2-12.
//  Copyright (c) 2014年 HKUST Green. All rights reserved.
//

#import "DriverRegisterViewController.h"

@interface DriverRegisterViewController ()

@end

@implementation DriverRegisterViewController

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
    if([_firstNameField.text isEqualToString:@""]||
       [_lastNameField.text isEqualToString:@""]||
       [_preferenceNameField.text isEqualToString:@""]||
       [_emailField.text isEqualToString:@""]||
       [_passwordField.text isEqualToString:@""]||
       [_reenterPasswordField.text isEqualToString:@""]||
       [_carPlateNumberField.text isEqualToString:@""]
       )
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
    
    NSInteger statusCode = [HttpRequest addDriver:_firstNameField.text
                                            LastName:_lastNameField.text
                                                itsc:_emailField.text
                                            password:_passwordField.text
                                              gender:_genderField.selectedSegmentIndex==0?@"m":@"f"
                                      preferenceName:_preferenceNameField.text
                                      carPlateNumber:_carPlateNumberField.text];
    
    if (statusCode==200) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Sucess!" message:@"Registration is sucessful!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [alert show];
    }else
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error!" message:@"Registration Failed!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [alert show];
    }
    
    // Initialize the NSURLConnection and proceed as described in
    // Retrieving the Contents of a URL
}

- (BOOL)textFieldShouldReturn:(UITextField *)theTextField {
    [theTextField resignFirstResponder];
    return YES;
}

- (IBAction)RegisterAction:(id)sender
{
    [_firstNameField resignFirstResponder];
    [_lastNameField resignFirstResponder];
    [_preferenceNameField resignFirstResponder];
    [_carPlateNumberField resignFirstResponder];
    [_emailField resignFirstResponder];
    [_passwordField resignFirstResponder];
    [_reenterPasswordField resignFirstResponder];
    
    [self checkFieldsComplete];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event

{
    
    [_firstNameField resignFirstResponder];
    [_lastNameField resignFirstResponder];
    [_preferenceNameField resignFirstResponder];
    [_carPlateNumberField resignFirstResponder];
    [_emailField resignFirstResponder];
    [_passwordField resignFirstResponder];
    [_reenterPasswordField resignFirstResponder];
    
    [super touchesBegan:touches withEvent:event];
}

-(IBAction)LoginAction:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)RegisterWithoutITSCAction:(id)sender {
    [self performSegueWithIdentifier:@"RegisterWithoutITSC" sender:self];
}

@end
