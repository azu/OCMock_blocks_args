//
//  ViewController.m
//  OCMock_blocks_args
//
//  Created by azu on 2013/07/15.
//  Copyright (c) 2013年 azu. All rights reserved.
//

#import "ViewController.h"
#import "NextViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL) animated {
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL) animated {
    [super viewDidAppear:animated];
    [self showModal];
}

- (void)showModal {
    NextViewController *nextViewController = [[NextViewController alloc] init];

    [self presentViewController:nextViewController animated:NO completion:^{
        nextViewController.view.backgroundColor = [UIColor grayColor];
    }];
}

@end
