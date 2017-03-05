//
//  YenToPoundsViewController.m
//  YenConverter
//
//  Created by dleivers on 04/09/2013.
//  Copyright (c) 2013 dleivers. All rights reserved.
//

#import "YenToPoundsViewController.h"

@implementation YenToPoundsViewController

-(IBAction)convert:(id)sender {
	[self.priceInYen resignFirstResponder];
	float yen = [[self.priceInYen text] floatValue];
	float pounds_price = yen / [self exchangeRate];
	[self.priceInPounds setText:[NSString stringWithFormat:@"£%.2f", pounds_price]];
}

@end
