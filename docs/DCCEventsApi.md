# DCCEventsApi

All URIs are relative to *https://api.knetik.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createEvent**](DCCEventsApi.md#createevent) | **POST** /v2/events | Creates a single event (a transaction with no duration)


# **createEvent**
```objc
-(NSURLSessionTask*) createEventWithCustomerId: (NSString*) customerId
    request: (DCCNewEventRequest*) request
        completionHandler: (void (^)(NSError* error)) handler;
```

Creates a single event (a transaction with no duration)

### Example 
```objc

NSString* customerId = @"customerId_example"; // customerId
DCCNewEventRequest* request = [[DCCNewEventRequest alloc] init]; // Similar to transactions, the details of that event (optional)

DCCEventsApi*apiInstance = [[DCCEventsApi alloc] init];

// Creates a single event (a transaction with no duration)
[apiInstance createEventWithCustomerId:customerId
              request:request
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling DCCEventsApi->createEvent: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **NSString***| customerId | 
 **request** | [**DCCNewEventRequest***](DCCNewEventRequest*.md)| Similar to transactions, the details of that event | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

