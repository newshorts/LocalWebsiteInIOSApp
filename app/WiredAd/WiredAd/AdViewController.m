//
//  AdViewController.m
//  WiredAd
//
//  Created by Mike Newell on 7/29/15.
//  Copyright (c) 2015 Mike Newell. All rights reserved.
//

#import "AdViewController.h"

@interface AdViewController ()

@end

@implementation AdViewController

@synthesize webView, indexPath;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // hide nav controller
    [self.navigationController setNavigationBarHidden:YES animated:YES];
    
    // allow the view to play inline (should work cause ipad anyway
    webView.allowsInlineMediaPlayback = YES;
    
    // load the url
    indexPath = [[NSBundle mainBundle] pathForResource:@"index" ofType:@"html" inDirectory:@"web"];
    NSURL *url = [NSURL fileURLWithPath:indexPath];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [webView loadRequest:request];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)userSwipedRight:(id)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
}

// hide the status bar
- (BOOL) prefersStatusBarHidden {
    return YES;
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
