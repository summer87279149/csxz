//
//  ViewController.m
//  城市选择模块
//
//  Created by Admin on 16/11/7.
//  Copyright © 2016年 Admin. All rights reserved.
//
#define WS(weakSelf)  __weak __typeof(&*self) weakSelf = self;

#import "ViewController.h"
#import "TLCityPickerController.h"
#import "XTLocationManager.h"
@interface ViewController ()<TLCityPickerDelegate,XTLocationManagerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (IBAction)chooseCity:(id)sender {
    [[XTLocationManager shareLocation] startLocation];
    [XTLocationManager shareLocation].delegate = self;
}
-(void)qqqqq:(NSString *)city{
    TLCityPickerController *cityPickerVC = [[TLCityPickerController alloc]init];
    cityPickerVC.delegate = self;
    UINavigationController *nav =[[UINavigationController alloc]initWithRootViewController:cityPickerVC];
    [self presentViewController:nav animated:YES completion:^{
    }];
}
- (void) cityPickerController:(TLCityPickerController *)cityPickerViewController
                didSelectCity:(TLCity *)city{
    
}

- (void) cityPickerControllerDidCancel:(TLCityPickerController *)cityPickerViewController{
    [cityPickerViewController dismissViewControllerAnimated:YES completion:nil];
}


















































- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
