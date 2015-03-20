//
//  ViewController2.m
//  PresentViewControllerIniOS8
//
//  Created by Masakiyo on 2015/03/16.
//  Copyright (c) 2015年 jp.saka. All rights reserved.
//

#import "ViewController2.h"
#import "ViewController3.h"

@interface ViewController2 ()

@end

@implementation ViewController2

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
	NSLog(@"ViewController2: %s", __FUNCTION__);
	[super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated {
	NSLog(@"ViewController2: %s", __FUNCTION__);
	[super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated {
	NSLog(@"ViewController2: %s", __FUNCTION__);
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated {
	NSLog(@"ViewController2: %s", __FUNCTION__);
	[super viewDidDisappear:animated];
}

- (IBAction)tapButton:(id)sender {
	ViewController3 *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewController3"];
	[self presentViewController:vc animated:YES completion:nil];
}

@end
