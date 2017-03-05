//
//  PoundsToYenViewController.m
//  YenConverter
//
//  Created by dleivers on 04/09/2013.
//  Copyright (c) 2013 dleivers. All rights reserved.
//

#import "PoundsToYenViewController.h"

@implementation PoundsToYenViewController

-(IBAction)convert:(id)sender {
	[self.priceInPounds resignFirstResponder];
	float pounds = [[self.priceInPounds text] floatValue];
	float yen_price = pounds * [self exchangeRate];
	[self.priceInYen setText:[NSString stringWithFormat:@"¥%.2f", yen_price]];
}

@end
