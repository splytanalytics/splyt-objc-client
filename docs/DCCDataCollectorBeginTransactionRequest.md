# DCCDataCollectorBeginTransactionRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**timeout** | **NSNumber*** | Timeout (in seconds) for the transaction | [optional] 
**timeoutMode** | **NSString*** | Timeout mode for the transaction. With TXN, the timeout is reset when an update is posted to the same transaction. With ANY, the timeout is reset when an update is posted for any transaction w/ the same user/device | [optional] 
**transactionId** | **NSString*** | Unique transaction ID | [optional] 
**category** | **NSString*** | The name/type of the transaction | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


