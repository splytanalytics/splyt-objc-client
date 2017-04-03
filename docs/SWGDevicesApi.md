# SWGDevicesApi

All URIs are relative to *https://api.knetik.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**newDeviceUsingPOST**](SWGDevicesApi.md#newdeviceusingpost) | **POST** /v2/devices | Submit a new device event
[**updateDeviceStateUsingPUT**](SWGDevicesApi.md#updatedevicestateusingput) | **PUT** /v2/devices/{id} | Updates the state parameters for the given device


# **newDeviceUsingPOST**
```objc
-(NSURLSessionTask*) newDeviceUsingPOSTWithCustomerId: (NSString*) customerId
    request: (SWGDataCollectorNewDeviceRequest*) request
    checked: (NSNumber*) checked
        completionHandler: (void (^)(NSError* error)) handler;
```

Submit a new device event

Declares to the Knetik.io platform that a device is new at the given point in time. If the 'checked' parameter is provided and set to 'true', however, the current state of the device in the Knetik.io platform is examined to determine if the device was previously declared as new and, if so, the device information is not updated in the Knetik.io platform.

### Example 
```objc

NSString* customerId = @"customerId_example"; // customerId
SWGDataCollectorNewDeviceRequest* request = [[SWGDataCollectorNewDeviceRequest alloc] init]; // New device information (optional)
NSNumber* checked = @false; // Flag indicating whether the device state should be checked before updating the state in the Knetik.io platform (optional) (default to false)

SWGDevicesApi*apiInstance = [[SWGDevicesApi alloc] init];

// Submit a new device event
[apiInstance newDeviceUsingPOSTWithCustomerId:customerId
              request:request
              checked:checked
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGDevicesApi->newDeviceUsingPOST: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **NSString***| customerId | 
 **request** | [**SWGDataCollectorNewDeviceRequest***](SWGDataCollectorNewDeviceRequest*.md)| New device information | [optional] 
 **checked** | **NSNumber***| Flag indicating whether the device state should be checked before updating the state in the Knetik.io platform | [optional] [default to false]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDeviceStateUsingPUT**
```objc
-(NSURLSessionTask*) updateDeviceStateUsingPUTWithId: (NSString*) _id
    customerId: (NSString*) customerId
    request: (SWGDataCollectorUpdateDeviceStateRequest*) request
        completionHandler: (void (^)(NSError* error)) handler;
```

Updates the state parameters for the given device

### Example 
```objc

NSString* _id = @"_id_example"; // ID of the device for which state information is being updated
NSString* customerId = @"customerId_example"; // customerId
SWGDataCollectorUpdateDeviceStateRequest* request = [[SWGDataCollectorUpdateDeviceStateRequest alloc] init]; // Updated device state information (optional)

SWGDevicesApi*apiInstance = [[SWGDevicesApi alloc] init];

// Updates the state parameters for the given device
[apiInstance updateDeviceStateUsingPUTWithId:_id
              customerId:customerId
              request:request
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling SWGDevicesApi->updateDeviceStateUsingPUT: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| ID of the device for which state information is being updated | 
 **customerId** | **NSString***| customerId | 
 **request** | [**SWGDataCollectorUpdateDeviceStateRequest***](SWGDataCollectorUpdateDeviceStateRequest*.md)| Updated device state information | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

