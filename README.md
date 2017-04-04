# SwaggerClient

<p>Use this API to send application data to Knetik.io including user/device information and transactional events.</p> <p>   Please consult the <a href=\"/doc\">official user documentation</a> to find out how to send data, and how this data is used. <p></p> <h2>Notes</h2> <br> New more ReSTful implementation of the telemetry data collection service. Legacy clients can still use the old API format, but we strongly recommend switching over to this new format. Navigate to the legacy documentation using the dropdown at the top of this page. <p></p> <h2>User IDs and Device IDs</h2> <br> Knetik.io can uniquely associate state, events and transactions to users and/or devices for your application. In order to accomplish this, each API call takes userId and deviceId as parameters in the request object. At least one of these must be provided in the request object, except as explicitly noted. <br> <p></p> <h2>Timestamps</h2> <br> All timestamp parameters must be epoch timestamps in milliseconds. <br> <p></p> <h2>Required Request Headers</h2> <br> The following HTTP header values must be provided for each API call: <ul>   <li>     <b>Content-Type: application/json</b>   </li> </ul> <p></p> <h2>Required Query Parameters</h2> <br> All API calls also require the following query parameters to be present on the URL: <ul>   <li>     <b>customer_id:</b> your unique customer ID   </li> </ul> <p></p> <h2>API Responses</h2> <br> If successful, API calls will simply return an HTTP response code of ACCEPTED (202) with no other data. If errors occur, a JSON payload will be returned containing detailed error information and an appropriate HTTP error status code will be provided (as documented in each of the API methods). <br> <p></p>

This ObjC package is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 2.0
- Package version: 3.0.4
- Build package: io.swagger.codegen.languages.ObjcClientCodegen
For more information, please visit [http://www.knetik.com](http://www.knetik.com)

## Requirements

The SDK requires [**ARC (Automatic Reference Counting)**](http://stackoverflow.com/questions/7778356/how-to-enable-disable-automatic-reference-counting) to be enabled in the Xcode project.

## Installation & Usage
### Install from Github using [CocoaPods](https://cocoapods.org/)

Add the following to the Podfile:

```ruby
pod 'SwaggerClient', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'
```

To specify a particular branch, append `, :branch => 'branch-name-here'`

To specify a particular commit, append `, :commit => '11aa22'`

### Install from local path using [CocoaPods](https://cocoapods.org/)

Put the SDK under your project folder (e.g. /path/to/objc_project/Vendor/SwaggerClient) and then add the following to the Podfile:

```ruby
pod 'SwaggerClient', :path => 'Vendor/SwaggerClient'
```

### Usage

Import the following:

```objc
#import <SwaggerClient/DCCApiClient.h>
#import <SwaggerClient/DCCDefaultConfiguration.h>
// load models
#import <SwaggerClient/DCCDataCollectorBaseRequest.h>
#import <SwaggerClient/DCCDataCollectorBatchRequest.h>
#import <SwaggerClient/DCCDataCollectorBeginTransactionRequest.h>
#import <SwaggerClient/DCCDataCollectorEndTransactionRequest.h>
#import <SwaggerClient/DCCDataCollectorNewDeviceRequest.h>
#import <SwaggerClient/DCCDataCollectorNewUserRequest.h>
#import <SwaggerClient/DCCDataCollectorTuneRequest.h>
#import <SwaggerClient/DCCDataCollectorUpdateCollectionRequest.h>
#import <SwaggerClient/DCCDataCollectorUpdateDeviceStateRequest.h>
#import <SwaggerClient/DCCDataCollectorUpdateTransactionRequest.h>
#import <SwaggerClient/DCCDataCollectorUpdateUserStateRequest.h>
#import <SwaggerClient/DCCNewEventRequest.h>
// load API classes for accessing endpoints
#import <SwaggerClient/DCCBatchApi.h>
#import <SwaggerClient/DCCDebuggingApi.h>
#import <SwaggerClient/DCCDevicesApi.h>
#import <SwaggerClient/DCCEventsApi.h>
#import <SwaggerClient/DCCMobileApplicationTrackingApi.h>
#import <SwaggerClient/DCCTransactionsApi.h>
#import <SwaggerClient/DCCUsersApi.h>

```

## Recommendation

It's recommended to create an instance of ApiClient per thread in a multi-threaded environment to avoid any potential issues.

## Getting Started 

 KnetikCloud (JSAPI) uses a strict Oauth 2.0 implementation with the following grant types: 

* **Password grant**: Used for user authentication, usually from an unsecured web or mobile client when a fully authenticated user account is required to perform actions. ex: 

```curl 
POST /oauth/token?grant_type=password&client_id=web&username=jdoe&password=68a4sd3sd
 ``` 

* **Client credentials grant**: 
 Used for server authentication or secured clients when the secret key cannot be discovered. This kind of grant is typically used for administrative tasks on the application itself or to access other user's account information. 

```curl 
POST /oauth/token grant_type=client_credentials&client_id=server-client-id&client_secret=1s31dfas65d4f3sa651c3s54f 
```  

The endpoint will return a response containing the authentication token as follows: 
```json: 
{"access_token":"25a0659c-6f4a-40bd-950e-0ba4af7acf0f","token_type":"bearer","expires_in":2145660769,"scope":"write read"}
``` 

Use the provided access_token in sub-sequent requests to authenticate (see code below). Make sure you refresh your token before it expires to avoid having to re-authenticate.

Please follow the [installation procedure](#installation--usage) and then run the following:

```objc


DCCDataCollectorBatchRequest* *batchRequest = [[DCCDataCollectorBatchRequest alloc] init]; // batchRequest
NSString* *customerId = @"customerId_example"; // customerId

DCCBatchApi *apiInstance = [[DCCBatchApi alloc] init];

// Submit a batch of requests as an array of input models
[apiInstance batchUsingPOSTWithBatchRequest:batchRequest
    customerId:customerId
              completionHandler: ^(NSError* error) {
                            if (error) {
                                NSLog(@"Error: %@", error);
                            }
                        }];

```

## Documentation for API Endpoints

All URIs are relative to *https://api.knetik.io*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*DCCBatchApi* | [**batchUsingPOST**](docs/DCCBatchApi.md#batchusingpost) | **POST** /v2/batch | Submit a batch of requests as an array of input models
*DCCDebuggingApi* | [**disableDebuggerUsingDELETE**](docs/DCCDebuggingApi.md#disabledebuggerusingdelete) | **DELETE** /v2/_debug/{customerId} | Disable debugging via Redis
*DCCDebuggingApi* | [**enableDebuggerUsingPOST**](docs/DCCDebuggingApi.md#enabledebuggerusingpost) | **POST** /v2/_debug/{customerId} | Enable debugging via Redis
*DCCDevicesApi* | [**newDeviceUsingPOST**](docs/DCCDevicesApi.md#newdeviceusingpost) | **POST** /v2/devices | Submit a new device event
*DCCDevicesApi* | [**updateDeviceStateUsingPUT**](docs/DCCDevicesApi.md#updatedevicestateusingput) | **PUT** /v2/devices/{id} | Updates the state parameters for the given device
*DCCEventsApi* | [**createEventUsingPOST**](docs/DCCEventsApi.md#createeventusingpost) | **POST** /v2/events | Creates a single event (a transaction with no duration)
*DCCMobileApplicationTrackingApi* | [**handleTuneRequestUsingPOST**](docs/DCCMobileApplicationTrackingApi.md#handletunerequestusingpost) | **POST** /v2/tune | Submit mobile application tracking data for Tune applications
*DCCTransactionsApi* | [**beginTransactionUsingPOST**](docs/DCCTransactionsApi.md#begintransactionusingpost) | **POST** /v2/transactions | Begins a new transaction
*DCCTransactionsApi* | [**endTransactionUsingPUT**](docs/DCCTransactionsApi.md#endtransactionusingput) | **PUT** /v2/transactions/{id}/end | Ends the transaction
*DCCTransactionsApi* | [**updateCollectionUsingPOST**](docs/DCCTransactionsApi.md#updatecollectionusingpost) | **POST** /v2/collections | Creates and finalizes a collection of transaction information
*DCCTransactionsApi* | [**updateTransactionUsingPUT**](docs/DCCTransactionsApi.md#updatetransactionusingput) | **PUT** /v2/transactions/{id} | Updates the progress for the given transaction
*DCCUsersApi* | [**newUserUsingPOST**](docs/DCCUsersApi.md#newuserusingpost) | **POST** /v2/users | Submit a new user event
*DCCUsersApi* | [**updateUserStateUsingPUT**](docs/DCCUsersApi.md#updateuserstateusingput) | **PUT** /v2/users/{id} | Updates the entity state for the given user


## Documentation For Models

 - [DCCDataCollectorBaseRequest](docs/DCCDataCollectorBaseRequest.md)
 - [DCCDataCollectorBatchRequest](docs/DCCDataCollectorBatchRequest.md)
 - [DCCDataCollectorBeginTransactionRequest](docs/DCCDataCollectorBeginTransactionRequest.md)
 - [DCCDataCollectorEndTransactionRequest](docs/DCCDataCollectorEndTransactionRequest.md)
 - [DCCDataCollectorNewDeviceRequest](docs/DCCDataCollectorNewDeviceRequest.md)
 - [DCCDataCollectorNewUserRequest](docs/DCCDataCollectorNewUserRequest.md)
 - [DCCDataCollectorTuneRequest](docs/DCCDataCollectorTuneRequest.md)
 - [DCCDataCollectorUpdateCollectionRequest](docs/DCCDataCollectorUpdateCollectionRequest.md)
 - [DCCDataCollectorUpdateDeviceStateRequest](docs/DCCDataCollectorUpdateDeviceStateRequest.md)
 - [DCCDataCollectorUpdateTransactionRequest](docs/DCCDataCollectorUpdateTransactionRequest.md)
 - [DCCDataCollectorUpdateUserStateRequest](docs/DCCDataCollectorUpdateUserStateRequest.md)
 - [DCCNewEventRequest](docs/DCCNewEventRequest.md)


## Documentation For Authorization

 All endpoints do not require authorization.


## Author

support@knetik.com


