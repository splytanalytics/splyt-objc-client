#import "DCCBatchApi.h"
#import "DCCQueryParamCollection.h"
#import "DCCApiClient.h"
#import "DCCBatchRequestResult.h"
#import "DCCDataCollectorBatchRequest.h"


@interface DCCBatchApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation DCCBatchApi

NSString* kDCCBatchApiErrorDomain = @"DCCBatchApiErrorDomain";
NSInteger kDCCBatchApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    return [self initWithApiClient:[DCCApiClient sharedClient]];
}


-(instancetype) initWithApiClient:(DCCApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _mutableDefaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.mutableDefaultHeaders[key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.mutableDefaultHeaders setValue:value forKey:key];
}

-(NSDictionary *)defaultHeaders {
    return self.mutableDefaultHeaders;
}

#pragma mark - Api Methods

///
/// Submit a batch of requests as an array of input models
/// For this to work, you will need to specify the value of the request_type field of each element in the list, which indicates the type of the element. For example, to submit a batch containing a DataCollectorNewUserRequest you would specify the value `newUser` as the request_type for your DataCollectorNewUserRequest element. Convention is DataCollectorSomeTypeRequest -> someType (DataCollectorNewUserRequest -> newUser, DataCollectorNewDeviceRequest -> newDevice, etc). If any invalid requests are detected in the batch, a HTTP 207 (Multi-Status) will be returned and the body will contain the status of each of the requests, in the order in which they were submitted, with detailed error messages and the JSON of the request returned for any invalid requests.
///  @param customerId customerId 
///
///  @param batchRequest The batch of requests to submit (optional)
///
///  @returns NSArray<DCCBatchRequestResult>*
///
-(NSURLSessionTask*) submitBatchWithCustomerId: (NSString*) customerId
    batchRequest: (DCCDataCollectorBatchRequest*) batchRequest
    completionHandler: (void (^)(NSArray<DCCBatchRequestResult>* output, NSError* error)) handler {
    // verify the required parameter 'customerId' is set
    if (customerId == nil) {
        NSParameterAssert(customerId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"customerId"] };
            NSError* error = [NSError errorWithDomain:kDCCBatchApiErrorDomain code:kDCCBatchApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v2/batch"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (customerId != nil) {
        queryParams[@"customerId"] = customerId;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"*/*"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = batchRequest;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSArray<DCCBatchRequestResult>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<DCCBatchRequestResult>*)data, error);
                                }
                            }];
}



@end
