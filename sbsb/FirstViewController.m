//
//  FirstViewController.m
//  sbsb
//
//  Created by 栾有数 on 15/10/15.
//  Copyright © 2015年 栾有数. All rights reserved.
//

#import "FirstViewController.h"
#import "ThirdViewController.h"
@interface FirstViewController ()<ThirdViewControllerDelegate>

@end

@implementation FirstViewController
-(void)change{
    self.view.backgroundColor = [UIColor grayColor];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)clicked:(id)sender {
    
}
- (IBAction)dissmiss:(id)sender {
    [self dismissModalViewControllerAnimated:YES];
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"Third"]) {
        ThirdViewController * vc = segue.destinationViewController;
        vc.delegateK = self;//delegate传值
        //block传值
        vc.update=^(UIColor * color){
            self.view.backgroundColor = [UIColor purpleColor];
        };
        vc.update=^(UIColor * color){
            self.view.backgroundColor = color;
        };
      
    }
    
}
-(void)performSegueWithIdentifier:(NSString *)identifier sender:(id)sender{

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
