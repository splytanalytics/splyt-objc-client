# DCCDataCollectorUpdateTransactionRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**category** | **NSString*** | The name/type of the transaction | 
**deviceId** | **NSString*** | Unique ID of the device triggering the event | [optional] 
**eventProperties** | **NSObject*** | A key/value list of properties for this event. Values can be numerical, strings or booleans, proper typing matters (quoted vs unquoted) | [optional] 
**eventTimestamp** | **NSNumber*** | Epoch timestamp &lt;i&gt;in milliseconds&lt;/i&gt; of when event itself occurred | 
**progress** | **NSNumber*** | Progress of the transaction, expressed as a percentage between 1 - 99 | 
**requestType** | **NSString*** | Specifies the canonical model name of the request. Ex: DataCollectorNewUserRequest - newUser, NewEventRequest - newEvent,e tc | 
**sendTimestamp** | **NSNumber*** | Epoch timestamp &lt;i&gt;in milliseconds&lt;/i&gt; of when event was sent to the API | 
**transactionId** | **NSString*** | Unique transaction ID | [optional] 
**userId** | **NSString*** | Unique ID of the user triggering the event | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


