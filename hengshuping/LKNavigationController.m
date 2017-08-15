//
//  LKNavigationController.m
//  hengshuping
//
//  Created by jason Yang on 2017/8/11.
//  Copyright © 2017年 lenkeng. All rights reserved.
//

#import "LKNavigationController.h"

@interface LKNavigationController ()

@end

@implementation LKNavigationController

- (BOOL)shouldAutorotate{
    
    return YES;
    
}

- (NSUInteger)supportedInterfaceOrientations{
    
    if (self.isLandscapeOK) {
        
        // for iPhone, you could also return UIInterfaceOrientationMaskAllButUpsideDown
        
        return UIInterfaceOrientationMaskAll;
        //
    }
    //
    return UIInterfaceOrientationMaskPortrait;
    //
}

// Returns interface orientation masks.

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation{
    
    return UIInterfaceOrientationPortrait;
    
}

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

@end
