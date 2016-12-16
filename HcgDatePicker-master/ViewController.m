//
//  ViewController.m
//  HcgDatePicker-master
//
//  Created by 黄成钢 on 14/12/2016.
//  Copyright © 2016 chedaoshanqian. All rights reserved.
//

#import "ViewController.h"
#import "HCGDatePickerAppearance.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)DatePickerYearMonthModeClick:(id)sender {
    HCGDatePickerAppearance *picker = [[HCGDatePickerAppearance alloc]initWithDatePickerMode:DatePickerYearMonthMode completeBlock:^(NSDate *date) {
        NSString *formatStr = @"yyyy年MM月";
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setDateFormat:formatStr];
        NSLog(@"%@",[dateFormatter stringFromDate:date]);
    }];
    [picker show];
}
- (IBAction)DatePickerDateModeClick:(id)sender {
    HCGDatePickerAppearance *picker = [[HCGDatePickerAppearance alloc]initWithDatePickerMode:DatePickerDateMode completeBlock:^(NSDate *date) {
        NSString *formatStr = @"yyyy年MM月dd日";
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setDateFormat:formatStr];
        NSLog(@"%@",[dateFormatter stringFromDate:date]);
    }];
    [picker show];

}
- (IBAction)DatePickerHourModeClick:(id)sender {
    HCGDatePickerAppearance *picker = [[HCGDatePickerAppearance alloc]initWithDatePickerMode:DatePickerHourMode completeBlock:^(NSDate *date) {
        NSString *formatStr = @"yyyy年MM月dd日HH:mm:ss";
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setDateFormat:formatStr];
        NSLog(@"%@",[dateFormatter stringFromDate:date]);
    }];
    [picker show];

}


@end
