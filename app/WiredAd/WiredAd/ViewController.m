//
//  ViewController.m
//  WiredAd
//
//  Created by Mike Newell on 7/29/15.
//  Copyright (c) 2015 Mike Newell. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize scrollView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // hide nav controller
    [self.navigationController setNavigationBarHidden:YES animated:YES];
    
    // article
    [scrollView setContentSize:CGSizeMake(768, 3854)];
    UIImageView *article = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"article"]];
    [scrollView addSubview:article];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// hide the status bar
- (BOOL) prefersStatusBarHidden {
    return YES;
}

@end
