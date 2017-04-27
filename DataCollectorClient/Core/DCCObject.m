#import "DCCObject.h"

@implementation DCCObject

/**
 * Workaround for JSONModel multithreading issues
 * https://github.com/icanzilb/JSONModel/issues/441
 */
- (instancetype)initWithDictionary:(NSDictionary *)dict error:(NSError **)err {
    static NSMutableSet *classNames;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        classNames = [NSMutableSet new];
    });
    
    BOOL initSync;
    @synchronized([self class])
    {
        NSString *className = NSStringFromClass([self class]);
        initSync = ![classNames containsObject:className];
        if(initSync)
        {
            [classNames addObject:className];
            self = [super initWithDictionary:dict error:err];
        }
    }
    if(!initSync)
    {
        self = [super initWithDictionary:dict error:err];
    }
    return self;
}

/**
 * Gets the string presentation of the object.
 * This method will be called when logging model object using `NSLog`.
 */
- (NSString *)description {
    return [[self toDictionary] description];
}

@end
