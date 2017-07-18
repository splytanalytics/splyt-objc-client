#import "DCCDataCollectorBaseRequest.h"

@implementation DCCDataCollectorBaseRequest

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
  }
  return self;
}

/**
 * Maps "discriminator" value to the sub-class name, so that inheritance is supported.
 */
- (id)initWithDictionary:(NSDictionary *)dict error:(NSError *__autoreleasing *)err {
    NSString * discriminatedClassName = [dict valueForKey:@"request_type"];
    if(discriminatedClassName == nil ){
         return [super initWithDictionary:dict error:err];
    }
    Class class = NSClassFromString([@"DCC" stringByAppendingString:discriminatedClassName]);
    if(!class) {
        class = NSClassFromString([@"DCC" stringByAppendingString:[discriminatedClassName capitalizedString]]);
    }
    if([self class ] == class) {
        return [super initWithDictionary:dict error:err];
    }
    return [[class alloc] initWithDictionary:dict error: err];
}

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"deviceId": @"device_id", @"eventProperties": @"event_properties", @"eventTimestamp": @"event_timestamp", @"requestType": @"request_type", @"sendTimestamp": @"send_timestamp", @"userId": @"user_id" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"deviceId", @"eventProperties", @"userId"];
  return [optionalProperties containsObject:propertyName];
}

@end
