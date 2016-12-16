//
//  HCGDatePickerAppearance.h
//  HcgDatePicker-master
//
//  Created by 黄成钢 on 14/12/2016.
//  Copyright © 2016 chedaoshanqian. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HCGDatePicker.h"


@interface HCGDatePickerAppearance : UIView

- (instancetype)initWithDatePickerMode:(DatePickerMode)dataPickerMode completeBlock:(void (^)(NSDate *date))completeBlock;
- (void)show;

@end
