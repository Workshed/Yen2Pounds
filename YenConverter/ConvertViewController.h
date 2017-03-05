//
//  ConvertViewController.h
//  YenConverter
//
//  Created by Daniel Leivers on 05/03/2017.
//  Copyright © 2017 dleivers. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ConvertViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField* priceInPounds;
@property (weak, nonatomic) IBOutlet UITextField* priceInYen;

- (float)exchangeRate;

@end
