//
//  LoginViewController.m
//  RideShare
//
//  Created by 放放 on 14-1-13.
//  Copyright (c) 2014年 HKUST Green. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

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
    PFObject *testObject = [PFObject objectWithClassName:@"TestObject"];
    [testObject setObject:@"bar" forKey:@"foo"];
    [testObject save];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)RegisterAction:(id)sender {
    
    switch (_identityField.selectedSegmentIndex) {
        case 0:
            [self performSegueWithIdentifier:@"RegisterAsStudent" sender:self];
            break;
        case 1:
            [self performSegueWithIdentifier:@"RegisterAsDriver" sender:self];
            break;
            
        default:
            break;
    }
    
}

- (IBAction)LoginAction:(id)sender {
    //NSLog([[NSString alloc] initWithFormat:@"%d", _identityField.selectedSegmentIndex]);
    
    //[self performSegueWithIdentifier:@"LoginAsStudent" sender:self];
    switch (_identityField.selectedSegmentIndex) {
        case 0:
            [self performSegueWithIdentifier:@"LoginAsStudent" sender:self];
            break;
        case 1:
            [self performSegueWithIdentifier:@"LoginAsDriver" sender:self];
            break;
            
        default:
            break;
    }
    
    
}

@end
