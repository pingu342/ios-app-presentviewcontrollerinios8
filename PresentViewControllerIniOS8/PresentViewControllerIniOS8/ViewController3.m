//
//  ViewController3.m
//  PresentViewControllerIniOS8
//
//  Created by Masakiyo on 2015/03/16.
//  Copyright (c) 2015年 jp.saka. All rights reserved.
//

#import "ViewController.h"
#import "ViewController2.h"
#import "ViewController3.h"

@interface ViewController3 ()

@end

@implementation ViewController3

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)viewWillAppear:(BOOL)animated {
	NSLog(@"ViewController3: %s", __FUNCTION__);
	[super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated {
	NSLog(@"ViewController3: %s", __FUNCTION__);
	[super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated {
	NSLog(@"ViewController3: %s", __FUNCTION__);
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated {
	NSLog(@"ViewController3: %s", __FUNCTION__);
	[super viewDidDisappear:animated];
}

- (IBAction)tapButton:(id)sender {
	if (!self.test) {
		// VC1->VC2->VC3の順で表示されている
		ViewController2 *vc2 = (ViewController2 *)self.presentingViewController;
		ViewController *vc1 = (ViewController *)vc2.presentingViewController;
		vc2.dismissing = YES;
		[vc1 dismissViewControllerAnimated:YES completion:nil];
	} else {
		// VC1->VC3の順で表示されている
		[self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
	}
}

@end
