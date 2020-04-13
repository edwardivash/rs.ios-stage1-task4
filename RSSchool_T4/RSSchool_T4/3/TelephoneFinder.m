#import "TelephoneFinder.h"

@implementation TelephoneFinder
- (NSArray <NSString*>*)findAllNumbersFromGivenNumber:(NSString*)number {
    
    NSMutableArray *res = [NSMutableArray new];
    
    NSDictionary *neighbours = @{@"0":@[@"8"],@"1":@[@"2",@"4"],@"2":@[@"1",@"3",@"5"],@"3":@[@"2",@"6"],@"4":@[@"1",@"5",@"7"],@"5":@[@"2",@"4",@"6",@"8"],@"6":@[@"3",@"5",@"9"],@"7":@[@"4",@"8"],@"8":@[@"5",@"7",@"9",@"0"],@"9":@[@"6",@"8"]};
    
    if (number.intValue < 0) {
        return 0;
    }
    
    for (int i = 0; i < [number length]; i++) {
        NSArray *trueNeighbours = [neighbours valueForKey:[number substringWithRange:NSMakeRange(i, 1)]];
        for (NSString *num in trueNeighbours) {
            NSString *updatedNeighbours = [number stringByReplacingCharactersInRange:NSMakeRange(i, 1) withString:[NSString stringWithFormat:@"%@",num]];
            [res addObject:updatedNeighbours];
        }
    }
    
    return res;
}
@end
