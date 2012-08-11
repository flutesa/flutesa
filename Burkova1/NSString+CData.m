//
//  NSString+CData.m
//  Burkova1
//
//  Created by flutesa on 09.08.12.
//  Copyright (c) 2012 flutesa. All rights reserved.
//

#import "NSString+CData.h"

@implementation NSString (CData)

- (NSString *)myData {
    
    NSDate *today = [[NSDate alloc] init];                              //выделяем память и инициализируем переменную текущей даты
    NSDateFormatter *date_format = [[NSDateFormatter alloc] init];      //память и инициализация для формата даты
    
    [date_format setDateFormat: @"'Дата: 'd MMMM yyyy'. Время: 'HH:mm"];//свой собственный формат вывода даты
    
    NSString * date_string = [date_format stringFromDate: today];       //создание строки из даты в своём формате
    return date_string;                                                 //возвращаем строку - как результат работы метода
    
}

@end
