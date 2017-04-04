# DCCDebuggingApi

All URIs are relative to *https://api.knetik.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**disableDebuggerUsingDELETE**](DCCDebuggingApi.md#disabledebuggerusingdelete) | **DELETE** /v2/_debug/{customerId} | Disable debugging via Redis
[**enableDebuggerUsingPOST**](DCCDebuggingApi.md#enabledebuggerusingpost) | **POST** /v2/_debug/{customerId} | Enable debugging via Redis


# **disableDebuggerUsingDELETE**
```objc
-(NSURLSessionTask*) disableDebuggerUsingDELETEWithCustomerId: (NSString*) customerId
        completionHandler: (void (^)(NSError* error)) handler;
```

Disable debugging via Redis

Forces debugging to be disabled for the customer

### Example 
```objc

NSString* customerId = @"customerId_example"; // customerId

DCCDebuggingApi*apiInstance = [[DCCDebuggingApi alloc] init];

// Disable debugging via Redis
[apiInstance disableDebuggerUsingDELETEWithCustomerId:customerId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling DCCDebuggingApi->disableDebuggerUsingDELETE: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **NSString***| customerId | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enableDebuggerUsingPOST**
```objc
-(NSURLSessionTask*) enableDebuggerUsingPOSTWithCustomerId: (NSString*) customerId
        completionHandler: (void (^)(NSError* error)) handler;
```

Enable debugging via Redis

Debugging is only enabled for a limited period of time (default is one hour)

### Example 
```objc

NSString* customerId = @"customerId_example"; // customerId

DCCDebuggingApi*apiInstance = [[DCCDebuggingApi alloc] init];

// Enable debugging via Redis
[apiInstance enableDebuggerUsingPOSTWithCustomerId:customerId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling DCCDebuggingApi->enableDebuggerUsingPOST: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **NSString***| customerId | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

