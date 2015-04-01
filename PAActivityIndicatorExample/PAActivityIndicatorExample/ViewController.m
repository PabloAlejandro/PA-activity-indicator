//
//  ViewController.m
//  PAActivityIndicatorExample
//
//  Created by Pau on 01/04/2015.
//  Copyright (c) 2015 PabloAlejandro. All rights reserved.
//

#import "ViewController.h"
#import "PAActivityIndicator.h"

@interface ViewController ()

@end

@implementation ViewController {
    PAActivityIndicator *activityIndicator;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    activityIndicator = [[PAActivityIndicator alloc] initInView:self.view title:@"Sample title"];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    [activityIndicator startLoadingAnimation];
}

#pragma mark - IBAction methods

- (IBAction)startAnimation:(id)sender
{
    [activityIndicator startLoadingAnimation];
}

- (IBAction)stopAnimation:(id)sender
{
    [activityIndicator stopLoadingAnimation];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
