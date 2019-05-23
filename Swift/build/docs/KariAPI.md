# KariAPI

All URIs are relative to *https://karikari.jp/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getKari**](KariAPI.md#getkari) | **GET** /kari/kari/{identifier} | Get Kari Information.


# **getKari**
```swift
    open class func getKari(identifier: String) -> Observable<Kari>
```

Get Kari Information.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import KariAPI

let identifier = "identifier_example" // String | Identifier of Kari to return

// TODO RxSwift sample code not yet implemented. To contribute, please open a ticket via http://github.com/OpenAPITools/openapi-generator/issues/new
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String** | Identifier of Kari to return | 

### Return type

[**Kari**](Kari.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

