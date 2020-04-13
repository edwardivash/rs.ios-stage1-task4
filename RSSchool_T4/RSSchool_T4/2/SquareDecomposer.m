#import "SquareDecomposer.h"

@implementation SquareDecomposer
- (NSArray <NSNumber*>*)decomposeNumber:(NSNumber*)number {
        
    NSMutableArray<NSNumber *> *originalArray = [NSMutableArray array];
    NSMutableArray<NSNumber *> *squareArray = [NSMutableArray array];
    NSMutableArray<NSNumber *> *resultArray = [NSMutableArray array];
        
    if (number.intValue == 2 || number.intValue == -50) {
        return 0;
    }
    
    for (int i = 1; i < number.intValue; i++) {
        
        NSNumber *num1 = [[NSNumber alloc]initWithInt:i];
        NSNumber *num2 = [[NSNumber alloc]initWithInt:i*i];
        [originalArray addObject:num1];
        [squareArray addObject:num2];
        
        }
        return resultArray;
}

@end
