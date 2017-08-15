//
//  LKViewController.m
//  hengshuping
//
//  Created by jason Yang on 2017/8/11.
//  Copyright © 2017年 lenkeng. All rights reserved.
//

#import "LKViewController.h"
#import "LKNavigationController.h"

@interface LKViewController ()

@end

@implementation LKViewController

- (BOOL)shouldAutorotate {
    return YES;
}

- (UIInterfaceOrientationMask) supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskAll;
}
//- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation{
//
//    return UIInterfaceOrientationPortrait;
//
//}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    ((LKNavigationController*)self.navigationController).isLandscapeOK = YES;
    // Do any additional setup after loading the view.
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    ((LKNavigationController*)self.navigationController).isLandscapeOK = NO;
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

@end
