//
//  HCGDatePicker.h
//  HcgDatePicker-master
//
//  Created by 黄成钢 on 14/12/2016.
//  Copyright © 2016 chedaoshanqian. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum {
    DatePickerYearMonthMode = 2,
    DatePickerDateMode,
    DatePickerHourMode
}DatePickerMode;

@class HCGDatePicker;

@protocol HCGDatePickerDelegate <NSObject>

@optional
- (void)datePicker:(HCGDatePicker *)datePicker didSelectedDate:(NSDate *)date;

@end

@interface HCGDatePicker : UIPickerView<UIPickerViewDelegate, UIPickerViewDataSource>

@property (weak, nonatomic) id<HCGDatePickerDelegate> dvDelegate;

@property (nonatomic, strong) UIColor *monthSelectedTextColor;
@property (nonatomic, strong) UIColor *monthTextColor;

@property (nonatomic, strong) UIColor *yearSelectedTextColor;
@property (nonatomic, strong) UIColor *yearTextColor;

@property (nonatomic, strong) UIFont *monthSelectedFont;
@property (nonatomic, strong) UIFont *monthFont;

@property (nonatomic, strong) UIFont *yearSelectedFont;
@property (nonatomic, strong) UIFont *yearFont;

@property (nonatomic, assign) NSInteger rowHeight;


/**
 *  查看datePicker当前选择的日期
 */
@property (nonatomic, strong, readonly) NSDate *date;


/**
 *  datePicker显示date
 */
- (void)selectDate:(NSDate *)date;

/**
 *  datePicker设置最小年份和最大年份
 */
- (void)setMinDate:(NSDate *)minDate;
-(instancetype)initWithDatePickerMode:(DatePickerMode)datePickerMode MinDate:(NSDate *)minDate MaxDate:(NSDate *)maxDate;
@end
