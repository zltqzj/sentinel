//
//  main.m
//  sentinel
//
//  Created by Sinosoft on 9/17/13.
//  Copyright (c) 2013 com.Sinosoft. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <stdarg.h>

void printStrings(char *first,...) __attribute__((sentinel));

void printString(char *first,...){
    va_list args;
    va_start(args, first);
    char *string = first;
    while (string != NULL) {
        printf("%s",string);
        string = va_arg(args, char *);
    }
    va_end(args);
    printf("\n");
}




int addemUp(int firstNum,...){
    va_list args;
    int sum = firstNum;
    int number;
    
    va_start(args, firstNum);
    while (1) {
        number = va_arg(args, int);
        sum += number;
        if (number == 0) {
            break;
        }
    }
    va_end(args);
    return sum;
    
}

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        char* str = "";
        if (str == NULL) {
            NSLog(@"dashi");
        }
        else
        {
            NSLog(@"aaa");
        }
        
        int sumbody = addemUp(1,2,3,4,5,6,7,8,9,0);
        
        printf("sum of 1-9 is %d\n",sumbody);
        
//        printStrings("spicy","pony","head", NULL);
//        
//        printString("machine","tool");
        
    }
    return 0;
}

