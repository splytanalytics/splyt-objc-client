# SWGTransactionsApi

All URIs are relative to *https://api.knetik.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**beginTransactionUsingPOST**](SWGTransactionsApi.md#begintransactionusingpost) | **POST** /v2/transactions | Begins a new transaction
[**endTransactionUsingPUT**](SWGTransactionsApi.md#endtransactionusingput) | **PUT** /v2/transactions/{id}/end | Ends the transaction
[**updateCollectionUsingPOST**](SWGTransactionsApi.md#updatecollectionusingpost) | **POST** /v2/collections | Creates and finalizes a collection of transaction information
[**updateTransactionUsingPUT**](SWGTransactionsApi.md#updatetransactionusingput) | **PUT** /v2/transactions/{id} | Updates the progress for the given transaction


# **beginTransactionUsingPOST**
```objc
-(NSURLSessionTask*) beginTransactionUsingPOSTWithCustomerId: (NSString*) customerId
    request: (SWGDataCollectorBeginTransactionRequest*) request
        completionHandler: (void (^)(NSError* error)) handler;
```

Begins a new transaction

Use the event properties to describe the initial state of the transaction

### Example 
```objc

NSString* customerId = @"customerId_example"; // customerId
SWGDataCollectorBeginTransactionRequest* request = [[SWGDataCollectorBeginTransactionRequest alloc] init]; // Transaction initiation information (optional)

SWGTransactionsApi*apiInstance = [[SWGTransactionsApi alloc] init];

// Begins a new transaction
[apiInstance beginTransactionUsingPOSTWithCustomerId:customerId
              request:request
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGTransactionsApi->beginTransactionUsingPOST: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **NSString***| customerId | 
 **request** | [**SWGDataCollectorBeginTransactionRequest***](SWGDataCollectorBeginTransactionRequest*.md)| Transaction initiation information | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **endTransactionUsingPUT**
```objc
-(NSURLSessionTask*) endTransactionUsingPUTWithId: (NSString*) _id
    customerId: (NSString*) customerId
    request: (SWGDataCollectorEndTransactionRequest*) request
        completionHandler: (void (^)(NSError* error)) handler;
```

Ends the transaction

Submits final transaction state to Knetik.io

### Example 
```objc

NSString* _id = @"_id_example"; // Unique ID of the transaction being finalized
NSString* customerId = @"customerId_example"; // customerId
SWGDataCollectorEndTransactionRequest* request = [[SWGDataCollectorEndTransactionRequest alloc] init]; // Transaction finalization information (optional)

SWGTransactionsApi*apiInstance = [[SWGTransactionsApi alloc] init];

// Ends the transaction
[apiInstance endTransactionUsingPUTWithId:_id
              customerId:customerId
              request:request
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGTransactionsApi->endTransactionUsingPUT: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Unique ID of the transaction being finalized | 
 **customerId** | **NSString***| customerId | 
 **request** | [**SWGDataCollectorEndTransactionRequest***](SWGDataCollectorEndTransactionRequest*.md)| Transaction finalization information | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCollectionUsingPOST**
```objc
-(NSURLSessionTask*) updateCollectionUsingPOSTWithCustomerId: (NSString*) customerId
    request: (SWGDataCollectorUpdateCollectionRequest*) request
        completionHandler: (void (^)(NSError* error)) handler;
```

Creates and finalizes a collection of transaction information

This operation basically encapsulates beginTransaction and endTransaction semantics into a single step and is used to update user balance information in Knetik.io

### Example 
```objc

NSString* customerId = @"customerId_example"; // customerId
SWGDataCollectorUpdateCollectionRequest* request = [[SWGDataCollectorUpdateCollectionRequest alloc] init]; // Collection state information (optional)

SWGTransactionsApi*apiInstance = [[SWGTransactionsApi alloc] init];

// Creates and finalizes a collection of transaction information
[apiInstance updateCollectionUsingPOSTWithCustomerId:customerId
              request:request
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGTransactionsApi->updateCollectionUsingPOST: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **NSString***| customerId | 
 **request** | [**SWGDataCollectorUpdateCollectionRequest***](SWGDataCollectorUpdateCollectionRequest*.md)| Collection state information | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateTransactionUsingPUT**
```objc
-(NSURLSessionTask*) updateTransactionUsingPUTWithId: (NSString*) _id
    customerId: (NSString*) customerId
    request: (SWGDataCollectorUpdateTransactionRequest*) request
        completionHandler: (void (^)(NSError* error)) handler;
```

Updates the progress for the given transaction

Use the event properties to update the state of the transaction

### Example 
```objc

NSString* _id = @"_id_example"; // Unique ID of the transaction being updated
NSString* customerId = @"customerId_example"; // customerId
SWGDataCollectorUpdateTransactionRequest* request = [[SWGDataCollectorUpdateTransactionRequest alloc] init]; // Transaction progress information (optional)

SWGTransactionsApi*apiInstance = [[SWGTransactionsApi alloc] init];

// Updates the progress for the given transaction
[apiInstance updateTransactionUsingPUTWithId:_id
              customerId:customerId
              request:request
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGTransactionsApi->updateTransactionUsingPUT: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Unique ID of the transaction being updated | 
 **customerId** | **NSString***| customerId | 
 **request** | [**SWGDataCollectorUpdateTransactionRequest***](SWGDataCollectorUpdateTransactionRequest*.md)| Transaction progress information | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

