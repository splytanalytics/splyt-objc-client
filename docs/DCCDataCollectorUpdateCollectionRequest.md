# DCCDataCollectorUpdateCollectionRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**balance** | **NSNumber*** | Final balance after the transaction | 
**balanceModification** | **NSNumber*** | The amount changed (delta) in the transaction | 
**currency** | **NSNumber*** | Whether the unit being updated is a currency unit or not | 
**deviceId** | **NSString*** | Unique ID of the device triggering the event | [optional] 
**eventProperties** | **NSObject*** | A key/value list of properties for this event. Values can be numerical, strings or booleans, proper typing matters (quoted vs unquoted) | [optional] 
**eventTimestamp** | **NSNumber*** | Epoch timestamp &lt;i&gt;in milliseconds&lt;/i&gt; of when event itself occurred | 
**name** | **NSString*** | Name of the unit/collection/currency being updated | 
**requestType** | **NSString*** | Specifies the canonical model name of the request. Ex: DataCollectorNewUserRequest - newUser, NewEventRequest - newEvent,e tc | 
**sendTimestamp** | **NSNumber*** | Epoch timestamp &lt;i&gt;in milliseconds&lt;/i&gt; of when event was sent to the API | 
**userId** | **NSString*** | Unique ID of the new device | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


