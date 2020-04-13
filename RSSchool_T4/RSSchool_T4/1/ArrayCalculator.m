#import "ArrayCalculator.h"

@implementation ArrayCalculator
+ (NSInteger)maxProductOf:(NSInteger)numberOfItems itemsFromArray:(NSArray *)array {
    
    NSMutableArray *mutableArray = [[NSMutableArray alloc]initWithArray:array];
    NSSortDescriptor *sortDescriptor = [NSSortDescriptor sortDescriptorWithKey:nil ascending:NO];
    [mutableArray sortUsingDescriptors:[NSArray arrayWithObject:sortDescriptor]];
    
    int res = 1;
    int value = 0;
    
        for (int i = 0; i < numberOfItems; i++) {
            
            NSMutableArray *sortedArray = [mutableArray objectAtIndex:i];
            NSString *strSortedArray = [NSString stringWithFormat:@"%@",sortedArray];
            
            if ([sortedArray isEqual:strSortedArray]) {
                return 0;
            } else if ([mutableArray count] <= numberOfItems) {
                for (NSNumber *num in mutableArray) {
                    if (num.intValue > 0) {
                    res *= [num intValue];
                    }
                }
                return res;
            }
                value = [[mutableArray objectAtIndex:i]intValue];
                res *= value;
        }
    
    return res;
}

@end
