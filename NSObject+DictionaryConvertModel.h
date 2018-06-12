
#import <Foundation/Foundation.h>

@protocol XLsn0wConvertDelegate <NSObject>

// key是数组时使用, 提供一个协议，只要准备这个协议的类，都能把数组中的字典转模型
// 用在三级数组转换
@optional
+ (NSDictionary *)arrayContainModelClass;

@end

@interface NSObject (DictionaryConvertModel)

// 字典转模型
+ (instancetype)convertModelWithDictionary:(NSDictionary *)dictionary;

@end
