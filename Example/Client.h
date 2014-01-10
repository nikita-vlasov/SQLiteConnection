#import <Foundation/Foundation.h>
#import "SQLiteConnection.h"

@interface Client : NSObject

/** Возвращает массив всех записей. */
+ (NSArray *)selectAllNotes;

@end
