//
//  DriverRegisterWithoutITSCViewController.h
//  RideShare
//
//  Created by 放放 on 14-2-21.
//  Copyright (c) 2014年 HKUST Green. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DriverRegisterWithoutITSCViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

- (IBAction)RegisterAction:(id)sender;
- (IBAction)RegisterWithITSCAction:(id)sender;
- (IBAction)LoginAction:(id)sender;

@end
