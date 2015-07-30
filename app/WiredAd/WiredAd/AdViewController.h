//
//  AdViewController.h
//  WiredAd
//
//  Created by Mike Newell on 7/29/15.
//  Copyright (c) 2015 Mike Newell. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AdViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) NSString *indexPath;

@end
