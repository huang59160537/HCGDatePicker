//
//  HCGDatePickerAppearance.m
//  HcgDatePicker-master
//
//  Created by 黄成钢 on 14/12/2016.
//  Copyright © 2016 chedaoshanqian. All rights reserved.
//

#import "HCGDatePickerAppearance.h"

#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height
#define DATE_PICKER_HEIGHT 216.0f
#define TOOLVIEW_HEIGHT 40.0f
#define BACK_HEIGHT TOOLVIEW_HEIGHT + DATE_PICKER_HEIGHT

typedef void(^dateBlock)(NSDate *);

@interface HCGDatePickerAppearance ()

@property (nonatomic, strong) UIView *backView;

@property (nonatomic, assign) DatePickerMode dataPickerMode;

@property (nonatomic, copy) dateBlock dateBlock;

@property (nonatomic, strong) HCGDatePicker *datePicker;

@end

@implementation HCGDatePickerAppearance

- (instancetype)initWithDatePickerMode:(DatePickerMode)dataPickerMode completeBlock:(void (^)(NSDate *date))completeBlock {
    self = [super init];
    if (self) {
        _dataPickerMode = dataPickerMode;
        [self setupUI];
        self.frame = CGRectMake(0, 0, kScreenWidth, kScreenHeight);
        _dateBlock = completeBlock;
    }
    return self;
}

- (void)setupUI {
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(hide)];
    [self addGestureRecognizer:tap];
    _backView = [[UIView alloc]initWithFrame:CGRectMake(0, kScreenHeight, kScreenWidth, BACK_HEIGHT)];
    _backView.backgroundColor = [UIColor whiteColor];
    _datePicker = [[HCGDatePicker alloc]initWithDatePickerMode:_dataPickerMode MinDate:nil MaxDate:nil];
    _datePicker.frame = CGRectMake(0, TOOLVIEW_HEIGHT, kScreenWidth, DATE_PICKER_HEIGHT);
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(kScreenWidth - 80, 8, 80, 40)];
    [btn setTitle:@"确定" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor colorWithRed:15/255.0f green:136/255.0f blue:235/255.0f alpha:1] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(done) forControlEvents:UIControlEventTouchUpInside];
    [self.backView addSubview:_datePicker];
    [self.backView addSubview:btn];
    [self addSubview:self.backView];
}

- (void)done {
    if (_dateBlock) {
        _dateBlock(_datePicker.date);
    }

}

- (void)show {
    [[UIApplication sharedApplication].keyWindow addSubview:self];
    self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0];
    [UIView animateWithDuration:0.25 animations:^{
        _backView.frame = CGRectMake(0, kScreenHeight - (BACK_HEIGHT), kScreenWidth, BACK_HEIGHT);
        self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.4];
    }];
}

-(void)hide {
    [UIView animateWithDuration:0.2 animations:^{
        _backView.frame = CGRectMake(0, kScreenHeight, kScreenWidth, BACK_HEIGHT);
        self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0];
    } completion:^(BOOL finished) {
        [self removeFromSuperview];
    }];

}

@end
