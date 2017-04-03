# SWGEventsApi

All URIs are relative to *https://api.knetik.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createEventUsingPOST**](SWGEventsApi.md#createeventusingpost) | **POST** /v2/events | Creates a single event (a transaction with no duration)


# **createEventUsingPOST**
```objc
-(NSURLSessionTask*) createEventUsingPOSTWithCustomerId: (NSString*) customerId
    request: (SWGNewEventRequest*) request
        completionHandler: (void (^)(NSError* error)) handler;
```

Creates a single event (a transaction with no duration)

### Example 
```objc

NSString* customerId = @"customerId_example"; // customerId
SWGNewEventRequest* request = [[SWGNewEventRequest alloc] init]; // Similar to transactions, the details of that event (optional)

SWGEventsApi*apiInstance = [[SWGEventsApi alloc] init];

// Creates a single event (a transaction with no duration)
[apiInstance createEventUsingPOSTWithCustomerId:customerId
              request:request
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGEventsApi->createEventUsingPOST: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **NSString***| customerId | 
 **request** | [**SWGNewEventRequest***](SWGNewEventRequest*.md)| Similar to transactions, the details of that event | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

