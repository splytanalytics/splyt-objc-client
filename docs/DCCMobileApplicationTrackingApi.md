# DCCMobileApplicationTrackingApi

All URIs are relative to *https://api.knetik.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**handleTuneRequestUsingPOST**](DCCMobileApplicationTrackingApi.md#handletunerequestusingpost) | **POST** /v2/tune | Submit mobile application tracking data for Tune applications


# **handleTuneRequestUsingPOST**
```objc
-(NSURLSessionTask*) handleTuneRequestUsingPOSTWithCustomerId: (NSString*) customerId
    request: (DCCDataCollectorTuneRequest*) request
        completionHandler: (void (^)(NSError* error)) handler;
```

Submit mobile application tracking data for Tune applications

### Example 
```objc

NSString* customerId = @"customerId_example"; // customerId
DCCDataCollectorTuneRequest* request = [[DCCDataCollectorTuneRequest alloc] init]; // Tune campaign tracking information (optional)

DCCMobileApplicationTrackingApi*apiInstance = [[DCCMobileApplicationTrackingApi alloc] init];

// Submit mobile application tracking data for Tune applications
[apiInstance handleTuneRequestUsingPOSTWithCustomerId:customerId
              request:request
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling DCCMobileApplicationTrackingApi->handleTuneRequestUsingPOST: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **NSString***| customerId | 
 **request** | [**DCCDataCollectorTuneRequest***](DCCDataCollectorTuneRequest*.md)| Tune campaign tracking information | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

