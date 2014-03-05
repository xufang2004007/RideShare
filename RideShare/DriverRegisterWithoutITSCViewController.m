//
//  DriverRegisterWithoutITSCViewController.m
//  RideShare
//
//  Created by 放放 on 14-2-21.
//  Copyright (c) 2014年 HKUST Green. All rights reserved.
//

#import "DriverRegisterWithoutITSCViewController.h"

@interface DriverRegisterWithoutITSCViewController ()

@end

@implementation DriverRegisterWithoutITSCViewController

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
    [_scrollView setScrollEnabled:YES];
    [_scrollView setContentSize:CGSizeMake(300, 915)];
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)RegisterAction:(id)sender {
}

- (IBAction)RegisterWithITSCAction:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)LoginAction:(id)sender {
    [self.view.window.rootViewController dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)RegisterWithITSC:(id)sender {
}
@end
