//
//  ConfigViewController.m
//  YenConverter
//
//  Created by dleivers on 04/09/2013.
//  Copyright (c) 2013 dleivers. All rights reserved.
//

#import "ConfigViewController.h"

@interface ConfigViewController ()

@end

@implementation ConfigViewController

-(void)viewWillAppear:(BOOL)animated {
	NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
	float exchange_rate = [defaults floatForKey:@"exchangeRate"];
	[exchangeRate setText:[NSString stringWithFormat:@"%f", exchange_rate]];
}

-(IBAction)setConfig:(id)sender {
    [exchangeRate resignFirstResponder];
	float exchange_rate = [[exchangeRate text] floatValue];
	NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setFloat:exchange_rate forKey:@"exchangeRate"];
}

@end
