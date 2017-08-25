# DCCDevicesApi

All URIs are relative to *https://api.knetik.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**newDevice**](DCCDevicesApi.md#newdevice) | **POST** /v2/devices | Submit a new device event
[**updateDeviceState**](DCCDevicesApi.md#updatedevicestate) | **PUT** /v2/devices/{id} | Updates the state parameters for the given device


# **newDevice**
```objc
-(NSURLSessionTask*) newDeviceWithCustomerId: (NSString*) customerId
    request: (DCCDataCollectorNewDeviceRequest*) request
    checked: (NSNumber*) checked
        completionHandler: (void (^)(NSError* error)) handler;
```

Submit a new device event

Declares to the Knetik.io platform that a device is new at the given point in time. If the 'checked' parameter is provided and set to 'true', however, the current state of the device in the Knetik.io platform is examined to determine if the device was previously declared as new and, if so, the device information is not updated in the Knetik.io platform.

### Example 
```objc

NSString* customerId = @"customerId_example"; // customerId
DCCDataCollectorNewDeviceRequest* request = [[DCCDataCollectorNewDeviceRequest alloc] init]; // New device information (optional)
NSNumber* checked = @false; // Flag indicating whether the device state should be checked before updating the state in the Knetik.io platform (optional) (default to false)

DCCDevicesApi*apiInstance = [[DCCDevicesApi alloc] init];

// Submit a new device event
[apiInstance newDeviceWithCustomerId:customerId
              request:request
              checked:checked
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling DCCDevicesApi->newDevice: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **NSString***| customerId | 
 **request** | [**DCCDataCollectorNewDeviceRequest***](DCCDataCollectorNewDeviceRequest.md)| New device information | [optional] 
 **checked** | **NSNumber***| Flag indicating whether the device state should be checked before updating the state in the Knetik.io platform | [optional] [default to false]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDeviceState**
```objc
-(NSURLSessionTask*) updateDeviceStateWithId: (NSString*) _id
    customerId: (NSString*) customerId
    request: (DCCDataCollectorUpdateDeviceStateRequest*) request
        completionHandler: (void (^)(NSError* error)) handler;
```

Updates the state parameters for the given device

### Example 
```objc

NSString* _id = @"_id_example"; // ID of the device for which state information is being updated
NSString* customerId = @"customerId_example"; // customerId
DCCDataCollectorUpdateDeviceStateRequest* request = [[DCCDataCollectorUpdateDeviceStateRequest alloc] init]; // Updated device state information (optional)

DCCDevicesApi*apiInstance = [[DCCDevicesApi alloc] init];

// Updates the state parameters for the given device
[apiInstance updateDeviceStateWithId:_id
              customerId:customerId
              request:request
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling DCCDevicesApi->updateDeviceState: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| ID of the device for which state information is being updated | 
 **customerId** | **NSString***| customerId | 
 **request** | [**DCCDataCollectorUpdateDeviceStateRequest***](DCCDataCollectorUpdateDeviceStateRequest.md)| Updated device state information | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

