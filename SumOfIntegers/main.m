//
//  main.m
//  SumOfIntegers


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *line = @"-339,-100";
        
        NSMutableArray *numStringArray = [[line componentsSeparatedByString: @","] mutableCopy];
        
        NSInteger originalArrayCount = numStringArray.count;
        
        NSInteger highestSum = 0;
       
        NSInteger tempSum = 0;
        
//        NSInteger totalSumOfArray = 0;
//        for (NSString *numString in numStringArray) {
//            totalSumOfArray += [numString integerValue];
//        }
//        NSLog(@"totalSumOfArray: %ld", totalSumOfArray);
        
        if (numStringArray.count == 1) {
            NSLog(@"%@", [numStringArray objectAtIndex:0]);
        }
        
        else {
            highestSum = [[numStringArray objectAtIndex:0] integerValue];
            
            while (numStringArray.count > 0) {
            
                NSInteger loopCount = 0;
                NSInteger i = 0;
            
                while (loopCount < numStringArray.count) {
                    
                    tempSum = 0;
                    
                    loopCount ++;
            
                    for (i = 0; i < loopCount; i++) {
                        NSInteger numAtindexI = [[numStringArray objectAtIndex:i] integerValue];
//                        NSLog(@"numAtindexI:%ld", numAtindexI);
                        tempSum += numAtindexI;
            
                    }
//                    NSLog(@"tempSum:%ld", tempSum);
                    
                    if (i == 0 && numStringArray.count == originalArrayCount) {
                    
                        highestSum = tempSum;
                    }
                    else if (tempSum > highestSum) {
                        highestSum = tempSum;
                    }
//                    NSLog(@"highestSum: %ld", highestSum);
                
            
                }
                [numStringArray removeObjectAtIndex:0];
                
            }
            NSLog(@"highestSum: %ld", highestSum);
        }
        
        
//        NSLog(@"highestSum: %ld", highestSum);
        
    }
    return 0;
}
//1015
//-237
//4651
//-118
//2534
//-619
//-354
//-253
//153
//1012
//442
//2613
//1592
//1376
//2152
//-396
//1705
//-302
//-1
//1620
//617
//1879
//-172
//2450
//1544
//1085
//1372
//-184
//1512
//1927
//0
//-246
//1118
//-314
//7444
//1275
//617
//3378
//1876
//-550
