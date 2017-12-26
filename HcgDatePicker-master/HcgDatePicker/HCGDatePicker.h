//
//  HCGDatePicker.h
//  HcgDatePicker-master
//
//  Created by 黄成钢 on 14/12/2016.
//  Copyright © 2016 chedaoshanqian. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum {
    DatePickerYearMonthMode = 2, //仅年月模式
    DatePickerDateMode,          //年月日模式
    DatePickerHourMode           //年月日带时间模式
}DatePickerMode;

@class HCGDatePicker;

@protocol HCGDatePickerDelegate <NSObject>

@optional

- (void)datePicker:(HCGDatePicker *)datePicker didSelectedDate:(NSDate *)date;

@end

@interface HCGDatePicker : UIPickerView<UIPickerViewDelegate, UIPickerViewDataSource>

@property (weak, nonatomic) id<HCGDatePickerDelegate> dvDelegate;

/**
 dataPicker 选中的文字颜色
 */
@property (nonatomic, strong) UIColor *selectedTextColor;

/**
 dataPicker 文字颜色
 */
@property (nonatomic, strong) UIColor *textColor;

/**
 dataPicker 选中的字体
 */
@property (nonatomic, strong) UIFont *selectedFont;

/**
 dataPicker 字体
 */
@property (nonatomic, strong) UIFont *font;

/**
 行高
 */
@property (nonatomic, assign) NSInteger rowHeight;

/**
 *  查看datePicker当前选择的日期
 */
@property (nonatomic, strong, readonly) NSDate *date;


/**
 *  设置当前datePicker显示的日期
 */
- (void)selectDate:(NSDate *)date;

/**
 *  datePicker设置最小年份和最大年份
 */
- (void)setMinDate:(NSDate *)minDate;

/**
 快速构造

 @param datePickerMode dataPicker的模式
 @param minDate 最早的时间
 @param maxDate 最晚的时间
 @return 返回的实列
 */
-(instancetype)initWithDatePickerMode:(DatePickerMode)datePickerMode MinDate:(NSDate *)minDate MaxDate:(NSDate *)maxDate;
@end
