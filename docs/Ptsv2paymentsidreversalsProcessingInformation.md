# CyberSource::Ptsv2paymentsidreversalsProcessingInformation

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_solution** | **String** | Type of digital payment solution for the transaction. Possible Values:   - &#x60;visacheckout&#x60;: Visa Checkout. This value is required for Visa Checkout transactions. For details, see &#x60;payment_solution&#x60; field description in [Visa Checkout Using the REST API.](https://developer.cybersource.com/content/dam/docs/cybs/en-us/apifields/reference/all/rest/api-fields.pdf)  - &#x60;001&#x60;: Apple Pay.  - &#x60;004&#x60;: Cybersource In-App Solution.  - &#x60;005&#x60;: Masterpass. This value is required for Masterpass transactions on OmniPay Direct.   - &#x60;006&#x60;: Android Pay.  - &#x60;007&#x60;: Chase Pay.  - &#x60;008&#x60;: Samsung Pay.  - &#x60;012&#x60;: Google Pay.  - &#x60;013&#x60;: Cybersource P2PE Decryption  - &#x60;014&#x60;: Mastercard credential on file (COF) payment network token. Returned in authorizations that use a payment network token associated with a TMS token.  - &#x60;015&#x60;: Visa credential on file (COF) payment network token. Returned in authorizations that use a payment network token associated with a TMS token.  - &#x60;027&#x60;: Click to Pay.  | [optional] 
**reconciliation_id** | **String** | Please check with Cybersource customer support to see if your merchant account is configured correctly so you can include this field in your request. * For Payouts: max length for FDCCompass is String (22).  | [optional] 
**link_id** | **String** | Value that links the current authorization request to the original authorization request. Set this value to the ID that was returned in the reply message from the original authorization request.  This value is used for:  - Partial authorizations - Split shipments  | [optional] 
**report_group** | **String** | Attribute that lets you define custom grouping for your processor reports. This field is supported only for **Worldpay VAP**.  | [optional] 
**visa_checkout_id** | **String** | Identifier for the **Visa Checkout** order. Visa Checkout provides a unique order ID for every transaction in the Visa Checkout **callID** field.  | [optional] 
**issuer** | [**Ptsv2paymentsIssuerInformation**](Ptsv2paymentsIssuerInformation.md) |  | [optional] 
**action_list** | **Array&lt;String&gt;** | Array of actions (one or more) to be included in the reversal Possible value: - &#x60;AP_AUTH_REVERSAL&#x60;: Use this when you want to reverse an Alternative Payment Authorization.  | [optional] 


