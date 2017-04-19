#import "DCCDataCollectorUpdateDeviceStateRequest.h"

@implementation DCCDataCollectorUpdateDeviceStateRequest

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"deviceId": @"deviceId", @"eventProperties": @"eventProperties", @"eventTimestamp": @"eventTimestamp", @"requestType": @"requestType", @"sendTimestamp": @"sendTimestamp", @"userId": @"userId" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"eventProperties", @"userId"];
  return [optionalProperties containsObject:propertyName];
}

@end
