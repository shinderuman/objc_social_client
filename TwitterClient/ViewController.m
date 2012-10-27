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
    switch (seg.selectedSegmentIndex) {
        // 0 = twitter
        case 0:
            controller = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
            break;
        // 1 = facebook
        case 1:
            controller = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
            break;
        default:
            break;
    }
    [self presentViewController:controller animated:YES completion:nil];
}
@end
