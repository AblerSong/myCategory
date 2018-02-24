//
//  ViewController.m
//  myCategory
//
//  Created by song on 2018/2/23.
//  Copyright © 2018年 song. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+SYAdd.h"
#import "UIAlertController+SYAdd.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)changeImageAlignment:(id)sender {
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 150, 80)];
    [button setImage:[UIImage imageNamed:@"clock"] forState:UIControlStateNormal];
    [button setTitle:@"我在下面" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor greenColor];
    [button changeButtonImageAlignment:SYImageAlignmentBottom withSpace:10.0];// 设置好图片和文字之后调用该方法
    [self.view addSubview:button];
}

- (IBAction)alertController:(id)sender {
    UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:@"我是title" message:@"我是message" preferredStyle:UIAlertControllerStyleActionSheet sureHandle:^(UIAlertAction *action) {
        NSLog(@"确定");
    }];
    [self presentViewController:alertVC animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
