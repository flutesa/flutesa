//
//  NSDate+CDate.m
//  Burkova1
//
//  Created by flutesa on 11.08.12.
//  Copyright (c) 2012 flutesa. All rights reserved.
//

#import "NSDate+CDate.h"

@implementation NSDate (CDate)

-(NSString *)myDate {
    NSDate *today = [[NSDate alloc] init];
    NSDateFormatter *date_format = [[NSDateFormatter alloc] init];      
    
    [date_format setDateFormat: @"'Дата: 'd MMMM yyyy'. Время: 'HH:mm"];
    NSString *date_string = [date_format stringFromDate: today];
    
    return date_string;
}

@end
