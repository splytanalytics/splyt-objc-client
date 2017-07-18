# DCCBatchApi

All URIs are relative to *https://api.knetik.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**submitBatch**](DCCBatchApi.md#submitbatch) | **POST** /v2/batch | Submit a batch of requests as an array of input models


# **submitBatch**
```objc
-(NSURLSessionTask*) submitBatchWithCustomerId: (NSString*) customerId
    batchRequest: (DCCDataCollectorBatchRequest*) batchRequest
        completionHandler: (void (^)(NSArray<DCCBatchRequestResult>* output, NSError* error)) handler;
```

Submit a batch of requests as an array of input models

For this to work, you will need to specify the value of the request_type field of each element in the list, which indicates the type of the element. For example, to submit a batch containing a DataCollectorNewUserRequest you would specify the value `newUser` as the request_type for your DataCollectorNewUserRequest element. Convention is DataCollectorSomeTypeRequest -> someType (DataCollectorNewUserRequest -> newUser, DataCollectorNewDeviceRequest -> newDevice, etc). If any invalid requests are detected in the batch, a HTTP 207 (Multi-Status) will be returned and the body will contain the status of each of the requests, in the order in which they were submitted, with detailed error messages and the JSON of the request returned for any invalid requests.

### Example 
```objc

NSString* customerId = @"customerId_example"; // customerId
DCCDataCollectorBatchRequest* batchRequest = [[DCCDataCollectorBatchRequest alloc] init]; // The batch of requests to submit (optional)

DCCBatchApi*apiInstance = [[DCCBatchApi alloc] init];

// Submit a batch of requests as an array of input models
[apiInstance submitBatchWithCustomerId:customerId
              batchRequest:batchRequest
          completionHandler: ^(NSArray<DCCBatchRequestResult>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling DCCBatchApi->submitBatch: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **NSString***| customerId | 
 **batchRequest** | [**DCCDataCollectorBatchRequest***](DCCDataCollectorBatchRequest.md)| The batch of requests to submit | [optional] 

### Return type

[**NSArray<DCCBatchRequestResult>***](DCCBatchRequestResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

