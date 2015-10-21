//
//  ThirdViewController.h
//  sbsb
//
//  Created by 栾有数 on 15/10/15.
//  Copyright © 2015年 栾有数. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^UpdateFirst)(UIColor * color);
@protocol ThirdViewControllerDelegate <NSObject>

- (void)change;

@end

@interface ThirdViewController : UIViewController
@property(nonatomic,assign) id <ThirdViewControllerDelegate> delegateK;
@property(nonatomic,strong)UpdateFirst update;

@end
