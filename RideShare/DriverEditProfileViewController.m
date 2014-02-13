//
//  DriverEditProfileViewController.m
//  RideShare
//
//  Created by 放放 on 14-2-12.
//  Copyright (c) 2014年 HKUST Green. All rights reserved.
//

#import "DriverEditProfileViewController.h"

@interface DriverEditProfileViewController ()

@end

@implementation DriverEditProfileViewController

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

- (IBAction)BackToSettingsAction:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];

}
@end
