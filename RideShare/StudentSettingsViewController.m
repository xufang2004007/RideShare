//
//  StudentSettingsViewController.m
//  RideShare
//
//  Created by 放放 on 14-2-12.
//  Copyright (c) 2014年 HKUST Green. All rights reserved.
//

#import "StudentSettingsViewController.h"

@interface StudentSettingsViewController ()

@end

@implementation StudentSettingsViewController

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

- (IBAction)LogoutAction:(id)sender {
    //[self.navigationController popToRootViewControllerAnimated:YES];
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)ChangePasswordAction:(id)sender{
    [self performSegueWithIdentifier:@"StudentChangePassword" sender:self];
    
}

- (IBAction)EditProfileAction:(id)sender {
    [self performSegueWithIdentifier:@"StudentEditProfile" sender:self];
}

- (IBAction)ContactUsAction:(id)sender {
    [self performSegueWithIdentifier:@"StudentContactUs" sender:self];
}
@end
