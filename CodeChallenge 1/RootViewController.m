//
//  ViewController.m
//  CodeChallenge 1
//
//  Created by Supreme Overlord on 10/23/14.
//  Copyright (c) 2014 Supreme Overlord. All rights reserved.
//

#import "RootViewController.h"
#import "WebViewViewController.h"

@interface RootViewController ()<UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UITextField *multiplicationValueLabelOne;
@property (strong, nonatomic) IBOutlet UITextField *multiplicationValueLabelTwo;
@property (strong, nonatomic) IBOutlet UIButton *UIWebButton;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.UIWebButton setEnabled:NO];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)onCalculateButtonPressed:(id)sender
{
    NSString *value1 = self.multiplicationValueLabelOne.text;
    int intValueOne = [value1 intValue];
    NSString *value2 = self.multiplicationValueLabelTwo.text;
    int intValueTwo = [value2 intValue];

    NSInteger finalMultiplicationValue = intValueOne * intValueTwo;

    NSString *stringFinalVariable = [NSString stringWithFormat:@"%li", (long)finalMultiplicationValue];

    self.navigationItem.title = stringFinalVariable;

    if (finalMultiplicationValue % 5 == 0) {
        [self.UIWebButton setEnabled:YES];
    }
    else
    {
        [self.UIWebButton setEnabled:NO];

    }

    [self.multiplicationValueLabelOne resignFirstResponder];
    [self.multiplicationValueLabelTwo resignFirstResponder];

}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    RootViewController *vc = [segue destinationViewController];

    vc.title = self.navigationItem.title;
}

@end
