#warning Название базы данных [обязательно].
/* Название базы данных */
#define dbName @"notes"

@interface SQLiteConnection : NSObject

/** Выбрать одно значение SQL. */
+ (NSString *)selectOneValueSQL:(NSString *)sql;
/** Выбрать много значений с SQL. */
+ (NSArray *)selectManyValuesWithSQL:(NSString *)sql;
/** Выберите один ряд с SQL. */
+ (NSDictionary *)selectOneRowWithSQL:(NSString *)sql;
/** Выберите многие строки с SQL. */
+ (NSArray *)selectManyRowsWithSQL:(NSString *)sql;
/** Вставить в SQL. */
+ (NSNumber *)insertWithSQL:(NSString *)sql;
/** Обновить С SQL. */
+ (void)updateWithSQL:(NSString *)sql;
/** Удалить с SQL. */
+ (void)deleteWithSQL:(NSString *)sql;

@end