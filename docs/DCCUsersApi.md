# DCCUsersApi

All URIs are relative to *https://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**newUser**](DCCUsersApi.md#newuser) | **POST** /v2/users | Submit a new user event
[**updateUserState**](DCCUsersApi.md#updateuserstate) | **PUT** /v2/users/{id} | Updates the entity state for the given user


# **newUser**
```objc
-(NSURLSessionTask*) newUserWithCustomerId: (NSString*) customerId
    request: (DCCDataCollectorNewUserRequest*) request
    checked: (NSNumber*) checked
        completionHandler: (void (^)(NSError* error)) handler;
```

Submit a new user event

Declares to the Knetik.io platform that the user is new at the given point in time. If the 'checked' parameter is provided and set to 'true', however, the current state of the user in the Knetik.io platform is examined to determine if the user was previously declared as new and, if so, the user information is not updated in the Knetik.io platform.

### Example 
```objc

NSString* customerId = @"customerId_example"; // customerId
DCCDataCollectorNewUserRequest* request = [[DCCDataCollectorNewUserRequest alloc] init]; // New user information (optional)
NSNumber* checked = @false; // Flag indicating whether the user state should be checked before updating the state in the Knetik.io platform (optional) (default to false)

DCCUsersApi*apiInstance = [[DCCUsersApi alloc] init];

// Submit a new user event
[apiInstance newUserWithCustomerId:customerId
              request:request
              checked:checked
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling DCCUsersApi->newUser: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **NSString***| customerId | 
 **request** | [**DCCDataCollectorNewUserRequest***](DCCDataCollectorNewUserRequest*.md)| New user information | [optional] 
 **checked** | **NSNumber***| Flag indicating whether the user state should be checked before updating the state in the Knetik.io platform | [optional] [default to false]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUserState**
```objc
-(NSURLSessionTask*) updateUserStateWithId: (NSString*) _id
    customerId: (NSString*) customerId
    request: (DCCDataCollectorUpdateUserStateRequest*) request
        completionHandler: (void (^)(NSError* error)) handler;
```

Updates the entity state for the given user

### Example 
```objc

NSString* _id = @"_id_example"; // ID of the user for whom state is being updated
NSString* customerId = @"customerId_example"; // customerId
DCCDataCollectorUpdateUserStateRequest* request = [[DCCDataCollectorUpdateUserStateRequest alloc] init]; // Updated user state information (optional)

DCCUsersApi*apiInstance = [[DCCUsersApi alloc] init];

// Updates the entity state for the given user
[apiInstance updateUserStateWithId:_id
              customerId:customerId
              request:request
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling DCCUsersApi->updateUserState: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| ID of the user for whom state is being updated | 
 **customerId** | **NSString***| customerId | 
 **request** | [**DCCDataCollectorUpdateUserStateRequest***](DCCDataCollectorUpdateUserStateRequest*.md)| Updated user state information | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

