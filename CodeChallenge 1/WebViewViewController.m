//
//  WebViewViewController.m
//  CodeChallenge 1
//
//  Created by Supreme Overlord on 10/23/14.
//  Copyright (c) 2014 Supreme Overlord. All rights reserved.
//

#import "WebViewViewController.h"

@interface WebViewViewController ()<UIWebViewDelegate>

@property (strong, nonatomic) IBOutlet UIWebView *WebViewURL;
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;
@end

@implementation WebViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    NSURL *url = [NSURL URLWithString:@"http://mobilemakers.co"];

    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.WebViewURL loadRequest:request];
}

-(void)webViewDidStartLoad:(UIWebView *)webView
{
    [self.activityIndicator startAnimating];


}

-(void)webViewDidFinishLoad:(UIWebView *)webView
{
    [self.activityIndicator stopAnimating];
    
}


@end
