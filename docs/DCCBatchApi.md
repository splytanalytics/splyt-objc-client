# DCCBatchApi

All URIs are relative to *https://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**submitBatch**](DCCBatchApi.md#submitbatch) | **POST** /v2/batch | Submit a batch of requests as an array of input models


# **submitBatch**
```objc
-(NSURLSessionTask*) submitBatchWithBatchRequest: (DCCDataCollectorBatchRequest*) batchRequest
    customerId: (NSString*) customerId
        completionHandler: (void (^)(NSError* error)) handler;
```

Submit a batch of requests as an array of input models

For this to work, you will need to specify the value of the request_type field of each element in the list, which indicates the type of the element. For example, to submit a batch containing a DataCollectorNewUserRequest you would specify the value `newUser` as the request_type for your DataCollectorNewUserRequest element. Convention is DataCollectorSomeTypeRequest - someType (DataCollectorNewUserRequest - newUser, DataCollectorNewDeviceRequest - newDevice, etc

### Example 
```objc

DCCDataCollectorBatchRequest* batchRequest = [[DCCDataCollectorBatchRequest alloc] init]; // batchRequest
NSString* customerId = @"customerId_example"; // customerId

DCCBatchApi*apiInstance = [[DCCBatchApi alloc] init];

// Submit a batch of requests as an array of input models
[apiInstance submitBatchWithBatchRequest:batchRequest
              customerId:customerId
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling DCCBatchApi->submitBatch: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batchRequest** | [**DCCDataCollectorBatchRequest***](DCCDataCollectorBatchRequest*.md)| batchRequest | 
 **customerId** | **NSString***| customerId | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

