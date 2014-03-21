# SQLiteConnection

## Что это?
Это класс, который облегчает жизнь тем людям, которые общаються с базой данных SQLite напрямую с помощью SQL запросов.

## ARC
Поддержки нет, по этому добавляем:
`-fno-objc-arc`

## Методы
```objective-c
/** Выбрать одно значение. */
+ (NSString *)selectOneValueSQL:(NSString *)sql;
 
/** Выбрать много значений. */
+ (NSArray *)selectManyValuesWithSQL:(NSString *)sql;

/** Выбирает один ряд. */
+ (NSDictionary *)selectOneRowWithSQL:(NSString *)sql;

/** Выбирает много строк */
+ (NSArray *)selectManyRowsWithSQL:(NSString *)sql;
 
/** Вставить. */
+ (NSNumber *)insertWithSQL:(NSString *)sql;

/** Обновить. */
+ (void)updateWithSQL:(NSString *)sql;
 
/** Удалить. */
+ (void)deleteWithSQL:(NSString *)sql;
```
