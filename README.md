# HCGDatePicker

![image](https://github.com/huang59160537/HCGDatePicker/blob/master/demo.gif)

```
    HCGDatePickerAppearance *picker = [[HCGDatePickerAppearance alloc]initWithDatePickerMode:DatePickerYearMonthMode completeBlock:^(NSDate *date) {

    NSString *formatStr = @"yyyy年MM月";

    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];

    [dateFormatter setDateFormat:formatStr];

    NSLog(@"%@",[dateFormatter stringFromDate:date]);

}];
    // 显示
    [picker show];
```
HCGDatePickerAppearance.h样式类，可随意自定义。
