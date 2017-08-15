//
//  ViewController.m
//  hengshuping
//
//  Created by jason Yang on 2017/8/11.
//  Copyright © 2017年 lenkeng. All rights reserved.
//

#import "ViewController.h"
#import "LKNavigationController.h"
#import "LKViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (BOOL)shouldAutorotate {
    return NO;
}

- (UIInterfaceOrientationMask) supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskPortrait;
}
- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation{

    return UIInterfaceOrientationPortrait;

}

- (IBAction)buttonAction:(id)sender {
    LKViewController* vc = [[LKViewController alloc] init];
    LKNavigationController* navi = [[LKNavigationController alloc] initWithRootViewController:vc];
    navi.isLandscapeOK = YES;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton* push  = [[UIButton alloc] initWithFrame:CGRectMake(0, 100, 100, 100)];
    [push setBackgroundColor:[UIColor orangeColor]];
    [self.view addSubview:push];
    [push addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)push{
    LKViewController* vc = [[LKViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
