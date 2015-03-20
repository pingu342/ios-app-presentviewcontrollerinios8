//
//  ViewController.m
//  PresentViewControllerIniOS8
//
//  Created by Masakiyo on 2015/03/16.
//  Copyright (c) 2015年 jp.saka. All rights reserved.
//

#import "ViewController.h"
#import "ViewController2.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated {
	NSLog(@"ViewController: %s", __FUNCTION__);
	[super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated {
	NSLog(@"ViewController: %s", __FUNCTION__);
	[super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated {
	NSLog(@"ViewController: %s", __FUNCTION__);
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated {
	NSLog(@"ViewController: %s", __FUNCTION__);
	[super viewDidDisappear:animated];
}

- (IBAction)tapButton:(id)sender {
	ViewController2 *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewController2"];
	[self presentViewController:vc animated:YES completion:nil];
}

@end
