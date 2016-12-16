# KSDatePicker

![image](https://github.com/huang59160537/HCGDatePicker/blob/master/DatePickerDateMode.png)
![image](https://github.com/huang59160537/HCGDatePicker/blob/master/DatePickerHourMode.png)
![image](https://github.com/huang59160537/HCGDatePicker/blob/master/DatePickerYearMonthMode.png)

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
