//
//  ViewController.m
//  TwitterClient
//
//  Created by shinderuman on 2012/10/27.
//  Copyright (c) 2012年 shinderuman. All rights reserved.
//

#import "ViewController.h"
#import <Social/Social.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) push
{
    SLComposeViewController *controller;
    // 0 = twitter
    if (seg.selectedSegmentIndex == 0) {
        controller = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
    // 1 = facebook
    } else if (seg.selectedSegmentIndex == 1) {
        controller = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
    } else {
    }
    [self presentViewController:controller animated:YES completion:nil];}
@end
