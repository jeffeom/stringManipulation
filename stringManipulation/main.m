//
//  main.m
//  stringManipulation
//
//  Created by Jeff Eom on 2016-06-27.
//  Copyright © 2016 Jeff Eom. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        char inputChars[255];
        char inputNum[255];
        char resultNum;
        
        while(true){
            printf("Type in the operation number: \n");
            fgets(inputNum, 255, stdin);
            resultNum = inputNum[0];
            
            if(resultNum == '1'){
                printf("Input a string to Uppercase it: \n");
                fgets(inputChars, 255, stdin);
                printf("Your string is %s\n", inputChars);
                NSString *inputString = [NSString stringWithUTF8String:inputChars];
                NSString *upperCased = [inputString uppercaseString];
                NSLog(@"Your result is: %@\n", upperCased);
                
            }else if(resultNum == '2'){
                printf("Input a string to Lowercase it: \n");
                fgets(inputChars, 255, stdin);
                printf("Your string is %s\n", inputChars);
                NSString *inputString = [NSString stringWithUTF8String:inputChars];
                NSString *lowerCased = [inputString lowercaseString];
                NSLog(@"Your result is: %@\n", lowerCased);
                
            }else if(resultNum == '3'){
                printf("Input a string to Numberize: \n");
                fgets(inputChars, 255, stdin);
                printf("Your string is %s\n", inputChars);
                NSString *inputString = [NSString stringWithUTF8String:inputChars];
                NSInteger numberized = [inputString integerValue];
                printf("Your result is: %d\n", numberized);
                
            }else if(resultNum == '4'){
                printf("Input a string to Canadinize it: \n");
                fgets(inputChars, 255, stdin);
                printf("Your string is %s\n", inputChars);
                NSString *inputString = [NSString stringWithUTF8String:inputChars];
                NSString *canadian = @", eh?";
                NSString *canadianized = [inputString stringByAppendingString:canadian];
                NSLog(@"Your result is: %@\n", canadianized);
                
            }else if(resultNum == '5'){
                printf("Input a string to Respond it with question mark or exclamation mark at the end: \n");
                fgets(inputChars, 255, stdin);
                printf("Your string is %s\n", inputChars);
                NSString *inputString = [NSString stringWithUTF8String:inputChars];
                
                if ([inputString rangeOfString:@"?"].location == NSNotFound) {
                    NSLog(@"Woah calm down");
                } else {
                    NSLog(@"I don't know");
                }
                
            }else if(resultNum == '6'){
                printf("Input a string to De-Space-it: \n");
                fgets(inputChars, 255, stdin);
                printf("Your string is %s\n", inputChars);
                NSString *inputString = [NSString stringWithUTF8String:inputChars];
                inputString = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
                NSLog(@"Your result is: %@\n", inputString);
            }
        }
    }
    return 0;
}
