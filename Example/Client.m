#import "Client.h"

@implementation Client

+ (NSArray *)selectAllNotes {
    return [SQLiteConnection selectManyRowsWithSQL:@"SELECT * FROM notes"];
}

@end
