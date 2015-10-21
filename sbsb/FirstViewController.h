//
//  FirstViewController.h
//  sbsb
//
//  Created by 栾有数 on 15/10/15.
//  Copyright © 2015年 栾有数. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^Update)(UIColor * color);

@interface FirstViewController : UIViewController
@property(nonatomic,weak)Update update;
@end
