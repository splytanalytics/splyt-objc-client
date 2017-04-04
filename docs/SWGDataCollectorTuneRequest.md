# SWGDataCollectorTuneRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**campaignName** | **NSString*** | Name of the campaign being tracked | 
**deviceId** | **NSString*** | Unique ID of the device | 
**eventProperties** | **NSObject*** | A key/value list of properties for this event. Values can be numerical, strings or booleans, proper typing matters (quoted vs unquoted) | [optional] 
**eventTimestamp** | **NSNumber*** | Epoch timestamp &lt;i&gt;in milliseconds&lt;/i&gt; of when event itself occurred | 
**requestType** | **NSString*** | Specifies the canonical model name of the request. Ex: DataCollectorNewUserRequest -&gt; newUser, NewEventRequest -&gt; newEvent,e tc | 
**sendTimestamp** | **NSNumber*** | Epoch timestamp &lt;i&gt;in milliseconds&lt;/i&gt; of when event was sent to the API | 
**userId** | **NSString*** | Unique ID of the user triggering the event | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


