//
//  ConvertViewController.m
//  YenConverter
//
//  Created by Daniel Leivers on 05/03/2017.
//  Copyright © 2017 dleivers. All rights reserved.
//

#import "ConvertViewController.h"

@interface ConvertViewController ()

@end

@implementation ConvertViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hideKeyboard)];
    [self.view addGestureRecognizer:tap];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    if ([self.priceInYen isEnabled]) {
        [self.priceInYen becomeFirstResponder];
    }
    else if ([self.priceInPounds isEnabled]) {
        [self.priceInPounds becomeFirstResponder];
    }
}

- (void)hideKeyboard {
    [self.priceInPounds resignFirstResponder];
    [self.priceInYen resignFirstResponder];
}

- (float)exchangeRate {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    return [defaults floatForKey:@"exchangeRate"];
}

@end
