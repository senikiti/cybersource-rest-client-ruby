=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'uri'

module CyberSource
  class CustomerShippingAddressApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default, config)
      @api_client = api_client
      @api_client.set_configuration(config)
    end
    # Delete a Customer Shipping Address
    # |  |  |  | | --- | --- | --- | |**Customer Shipping Address**<br>A Customer Shipping Address represents tokenized customer shipping information.<br>A [Customer](#token-management_customer_create-a-customer) can have [one or more Shipping Addresses](#token-management_customer-shipping-address_list-shipping-addresses-for-a-customer), with one allocated as the Customers default for use in payments.|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|**Deleting a Customers Shipping Address**<br>Your system can use this API to delete an existing Shipping Address for a Customer.<br>If a customer has more than one Shipping Address then the default Shipping Address cannot be deleted without first selecting a [new default Shipping Address](#token-management_customer-shipping-address_update-a-customer-shipping-address_samplerequests-dropdown_make-customer-shipping-address-the-default_liveconsole-tab-request-body). 
    #
    # @param customer_id The Id of a Customer.
    # @param shipping_address_id The Id of a shipping address.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :profile_id The Id of a profile containing user specific TMS configuration.
    # @return [nil]
    #
    def delete_customer_shipping_address(customer_id, shipping_address_id, opts = {})
      data, status_code, headers = delete_customer_shipping_address_with_http_info(customer_id, shipping_address_id, opts)
      return data, status_code, headers
    end

    # Delete a Customer Shipping Address
    # |  |  |  | | --- | --- | --- | |**Customer Shipping Address**&lt;br&gt;A Customer Shipping Address represents tokenized customer shipping information.&lt;br&gt;A [Customer](#token-management_customer_create-a-customer) can have [one or more Shipping Addresses](#token-management_customer-shipping-address_list-shipping-addresses-for-a-customer), with one allocated as the Customers default for use in payments.|&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;|**Deleting a Customers Shipping Address**&lt;br&gt;Your system can use this API to delete an existing Shipping Address for a Customer.&lt;br&gt;If a customer has more than one Shipping Address then the default Shipping Address cannot be deleted without first selecting a [new default Shipping Address](#token-management_customer-shipping-address_update-a-customer-shipping-address_samplerequests-dropdown_make-customer-shipping-address-the-default_liveconsole-tab-request-body). 
    # @param customer_id The Id of a Customer.
    # @param shipping_address_id The Id of a shipping address.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :profile_id The Id of a profile containing user specific TMS configuration.
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_customer_shipping_address_with_http_info(customer_id, shipping_address_id, opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: CustomerShippingAddressApi.delete_customer_shipping_address ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # verify the required parameter 'customer_id' is set
      if @api_client.config.client_side_validation && customer_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_id' when calling CustomerShippingAddressApi.delete_customer_shipping_address"
      end
      # verify the required parameter 'shipping_address_id' is set
      if @api_client.config.client_side_validation && shipping_address_id.nil?
        fail ArgumentError, "Missing the required parameter 'shipping_address_id' when calling CustomerShippingAddressApi.delete_customer_shipping_address"
      end
      # resource path
      local_var_path = 'tms/v2/customers/{customerId}/shipping-addresses/{shippingAddressId}'.sub('{' + 'customerId' + '}', customer_id.to_s).sub('{' + 'shippingAddressId' + '}', shipping_address_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json;charset=utf-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=utf-8'])
      header_params[:'profile-id'] = opts[:'profile_id'] if !opts[:'profile_id'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      if 'DELETE' == 'POST'
        post_body = '{}'
      else
        post_body = nil
      end
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        begin
        raise
            @api_client.config.logger.debug "API called: CustomerShippingAddressApi#delete_customer_shipping_address\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
    # Retrieve a Customer Shipping Address
    # |  |  |  | | --- | --- | --- | |**Customer Shipping Address**<br>A Customer Shipping Address represents tokenized customer shipping information.<br>A [Customer](#token-management_customer_create-a-customer) can have [one or more Shipping Addresses](#token-management_customer-shipping-address_list-shipping-addresses-for-a-customer), with one allocated as the Customers default for use in payments.|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|**Retrieving a Customer Shipping Address**<br>Your system can use this API to retrieve an existing Shipping Address for a Customer.<br>To perform a payment with a particular Shipping Address simply specify the [Shipping Address Id in the payments request](#payments_payments_process-a-payment_samplerequests-dropdown_authorization-using-tokens_authorization-with-customer-payment-instrument-and-shipping-address-token-id_liveconsole-tab-request-body). 
    #
    # @param customer_id The Id of a Customer.
    # @param shipping_address_id The Id of a shipping address.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :profile_id The Id of a profile containing user specific TMS configuration.
    # @return [Tmsv2customersEmbeddedDefaultShippingAddress]
    #
    def get_customer_shipping_address(customer_id, shipping_address_id, opts = {})
      data, status_code, headers = get_customer_shipping_address_with_http_info(customer_id, shipping_address_id, opts)
      return data, status_code, headers
    end

    # Retrieve a Customer Shipping Address
    # |  |  |  | | --- | --- | --- | |**Customer Shipping Address**&lt;br&gt;A Customer Shipping Address represents tokenized customer shipping information.&lt;br&gt;A [Customer](#token-management_customer_create-a-customer) can have [one or more Shipping Addresses](#token-management_customer-shipping-address_list-shipping-addresses-for-a-customer), with one allocated as the Customers default for use in payments.|&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;|**Retrieving a Customer Shipping Address**&lt;br&gt;Your system can use this API to retrieve an existing Shipping Address for a Customer.&lt;br&gt;To perform a payment with a particular Shipping Address simply specify the [Shipping Address Id in the payments request](#payments_payments_process-a-payment_samplerequests-dropdown_authorization-using-tokens_authorization-with-customer-payment-instrument-and-shipping-address-token-id_liveconsole-tab-request-body). 
    # @param customer_id The Id of a Customer.
    # @param shipping_address_id The Id of a shipping address.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :profile_id The Id of a profile containing user specific TMS configuration.
    # @return [Array<(Tmsv2customersEmbeddedDefaultShippingAddress, Fixnum, Hash)>] Tmsv2customersEmbeddedDefaultShippingAddress data, response status code and response headers
    def get_customer_shipping_address_with_http_info(customer_id, shipping_address_id, opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: CustomerShippingAddressApi.get_customer_shipping_address ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # verify the required parameter 'customer_id' is set
      if @api_client.config.client_side_validation && customer_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_id' when calling CustomerShippingAddressApi.get_customer_shipping_address"
      end
      # verify the required parameter 'shipping_address_id' is set
      if @api_client.config.client_side_validation && shipping_address_id.nil?
        fail ArgumentError, "Missing the required parameter 'shipping_address_id' when calling CustomerShippingAddressApi.get_customer_shipping_address"
      end
      # resource path
      local_var_path = 'tms/v2/customers/{customerId}/shipping-addresses/{shippingAddressId}'.sub('{' + 'customerId' + '}', customer_id.to_s).sub('{' + 'shippingAddressId' + '}', shipping_address_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json;charset=utf-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=utf-8'])
      header_params[:'profile-id'] = opts[:'profile_id'] if !opts[:'profile_id'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      if 'GET' == 'POST'
        post_body = '{}'
      else
        post_body = nil
      end
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Tmsv2customersEmbeddedDefaultShippingAddress')
      if @api_client.config.debugging
        begin
        raise
            @api_client.config.logger.debug "API called: CustomerShippingAddressApi#get_customer_shipping_address\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
    # List Shipping Addresses for a Customer
    # |  |  |  | | --- | --- | --- | |**Customer Shipping Address**<br>A Customer Shipping Address represents tokenized customer shipping information.<br>A [Customer](#token-management_customer_create-a-customer) can have [one or more Shipping Addresses](#token-management_customer-shipping-address_list-shipping-addresses-for-a-customer), with one allocated as the Customers default for use in payments.|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|**Retrieving all Customer Shipping Addresses**<br>Your system can use this API to retrieve all existing Shipping Addresses for a Customer. 
    #
    # @param customer_id The Id of a Customer.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :profile_id The Id of a profile containing user specific TMS configuration.
    # @option opts [Integer] :offset Starting record in zero-based dataset that should be returned as the first object in the array. Default is 0. (default to 0)
    # @option opts [Integer] :limit The maximum number that can be returned in the array starting from the offset record in zero-based dataset. Default is 20, maximum is 100. (default to 20)
    # @return [ShippingAddressListForCustomer]
    #
    def get_customer_shipping_addresses_list(customer_id, opts = {})
      data, status_code, headers = get_customer_shipping_addresses_list_with_http_info(customer_id, opts)
      return data, status_code, headers
    end

    # List Shipping Addresses for a Customer
    # |  |  |  | | --- | --- | --- | |**Customer Shipping Address**&lt;br&gt;A Customer Shipping Address represents tokenized customer shipping information.&lt;br&gt;A [Customer](#token-management_customer_create-a-customer) can have [one or more Shipping Addresses](#token-management_customer-shipping-address_list-shipping-addresses-for-a-customer), with one allocated as the Customers default for use in payments.|&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;|**Retrieving all Customer Shipping Addresses**&lt;br&gt;Your system can use this API to retrieve all existing Shipping Addresses for a Customer. 
    # @param customer_id The Id of a Customer.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :profile_id The Id of a profile containing user specific TMS configuration.
    # @option opts [Integer] :offset Starting record in zero-based dataset that should be returned as the first object in the array. Default is 0.
    # @option opts [Integer] :limit The maximum number that can be returned in the array starting from the offset record in zero-based dataset. Default is 20, maximum is 100.
    # @return [Array<(ShippingAddressListForCustomer, Fixnum, Hash)>] ShippingAddressListForCustomer data, response status code and response headers
    def get_customer_shipping_addresses_list_with_http_info(customer_id, opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: CustomerShippingAddressApi.get_customer_shipping_addresses_list ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # verify the required parameter 'customer_id' is set
      if @api_client.config.client_side_validation && customer_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_id' when calling CustomerShippingAddressApi.get_customer_shipping_addresses_list"
      end
      # resource path
      local_var_path = 'tms/v2/customers/{customerId}/shipping-addresses'.sub('{' + 'customerId' + '}', customer_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json;charset=utf-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=utf-8'])
      header_params[:'profile-id'] = opts[:'profile_id'] if !opts[:'profile_id'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      if 'GET' == 'POST'
        post_body = '{}'
      else
        post_body = nil
      end
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ShippingAddressListForCustomer')
      if @api_client.config.debugging
        begin
        raise
            @api_client.config.logger.debug "API called: CustomerShippingAddressApi#get_customer_shipping_addresses_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
    # Update a Customer Shipping Address
    # |  |  |  | | --- | --- | --- | |**Customer Shipping Address**<br>A Customer Shipping Address represents tokenized customer shipping information.<br>A [Customer](#token-management_customer_create-a-customer) can have [one or more Shipping Addresses](#token-management_customer-shipping-address_list-shipping-addresses-for-a-customer), with one allocated as the Customers default for use in payments.|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|**Updating a Customers Shipping Address**<br>Your system can use this API to update an existing Shipping Addresses for a Customer, including selecting a [default Shipping Address](#token-management_customer-shipping-address_update-a-customer-shipping-address_samplerequests-dropdown_make-customer-shipping-address-the-default_liveconsole-tab-request-body) for use in payments. 
    #
    # @param customer_id The Id of a Customer.
    # @param shipping_address_id The Id of a shipping address.
    # @param patch_customer_shipping_address_request 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :profile_id The Id of a profile containing user specific TMS configuration.
    # @option opts [String] :if_match Contains an ETag value from a GET request to make the request conditional.
    # @return [Tmsv2customersEmbeddedDefaultShippingAddress]
    #
    def patch_customers_shipping_address(customer_id, shipping_address_id, patch_customer_shipping_address_request, opts = {})
      data, status_code, headers = patch_customers_shipping_address_with_http_info(customer_id, shipping_address_id, patch_customer_shipping_address_request, opts)
      return data, status_code, headers
    end

    # Update a Customer Shipping Address
    # |  |  |  | | --- | --- | --- | |**Customer Shipping Address**&lt;br&gt;A Customer Shipping Address represents tokenized customer shipping information.&lt;br&gt;A [Customer](#token-management_customer_create-a-customer) can have [one or more Shipping Addresses](#token-management_customer-shipping-address_list-shipping-addresses-for-a-customer), with one allocated as the Customers default for use in payments.|&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;|**Updating a Customers Shipping Address**&lt;br&gt;Your system can use this API to update an existing Shipping Addresses for a Customer, including selecting a [default Shipping Address](#token-management_customer-shipping-address_update-a-customer-shipping-address_samplerequests-dropdown_make-customer-shipping-address-the-default_liveconsole-tab-request-body) for use in payments. 
    # @param customer_id The Id of a Customer.
    # @param shipping_address_id The Id of a shipping address.
    # @param patch_customer_shipping_address_request 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :profile_id The Id of a profile containing user specific TMS configuration.
    # @option opts [String] :if_match Contains an ETag value from a GET request to make the request conditional.
    # @return [Array<(Tmsv2customersEmbeddedDefaultShippingAddress, Fixnum, Hash)>] Tmsv2customersEmbeddedDefaultShippingAddress data, response status code and response headers
    def patch_customers_shipping_address_with_http_info(customer_id, shipping_address_id, patch_customer_shipping_address_request, opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: CustomerShippingAddressApi.patch_customers_shipping_address ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # verify the required parameter 'customer_id' is set
      if @api_client.config.client_side_validation && customer_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_id' when calling CustomerShippingAddressApi.patch_customers_shipping_address"
      end
      # verify the required parameter 'shipping_address_id' is set
      if @api_client.config.client_side_validation && shipping_address_id.nil?
        fail ArgumentError, "Missing the required parameter 'shipping_address_id' when calling CustomerShippingAddressApi.patch_customers_shipping_address"
      end
      # verify the required parameter 'patch_customer_shipping_address_request' is set
      if @api_client.config.client_side_validation && patch_customer_shipping_address_request.nil?
        fail ArgumentError, "Missing the required parameter 'patch_customer_shipping_address_request' when calling CustomerShippingAddressApi.patch_customers_shipping_address"
      end
      # resource path
      local_var_path = 'tms/v2/customers/{customerId}/shipping-addresses/{shippingAddressId}'.sub('{' + 'customerId' + '}', customer_id.to_s).sub('{' + 'shippingAddressId' + '}', shipping_address_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json;charset=utf-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=utf-8'])
      header_params[:'profile-id'] = opts[:'profile_id'] if !opts[:'profile_id'].nil?
      header_params[:'if-match'] = opts[:'if_match'] if !opts[:'if_match'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(patch_customer_shipping_address_request)
      sdk_tracker = SdkTracker.new
      post_body = sdk_tracker.insert_developer_id_tracker(post_body, 'PatchCustomerShippingAddressRequest', @api_client.config.host)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Tmsv2customersEmbeddedDefaultShippingAddress')
      if @api_client.config.debugging
        begin
        raise
            @api_client.config.logger.debug "API called: CustomerShippingAddressApi#patch_customers_shipping_address\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
    # Create a Customer Shipping Address
    # |  |  |  | | --- | --- | --- | |**Customer Shipping Address**<br>A Customer Shipping Address represents tokenized customer shipping information.<br>A [Customer](#token-management_customer_create-a-customer) can have [one or more Shipping Addresses](#token-management_customer-shipping-address_list-shipping-addresses-for-a-customer), with one allocated as the Customers default for use in payments.|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|**Creating a Customer Shipping Address**<br>Your system can use this API to create an existing Customers default or non default Shipping Address.<br>You can also create additional Customer Shipping Addresses via the [Payments API](#payments_payments_process-a-payment_samplerequests-dropdown_authorization-with-token-create_authorization-create-default-payment-instrument-shipping-address-for-existing-customer_liveconsole-tab-request-body). 
    #
    # @param customer_id The Id of a Customer.
    # @param post_customer_shipping_address_request 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :profile_id The Id of a profile containing user specific TMS configuration.
    # @return [Tmsv2customersEmbeddedDefaultShippingAddress]
    #
    def post_customer_shipping_address(customer_id, post_customer_shipping_address_request, opts = {})
      data, status_code, headers = post_customer_shipping_address_with_http_info(customer_id, post_customer_shipping_address_request, opts)
      return data, status_code, headers
    end

    # Create a Customer Shipping Address
    # |  |  |  | | --- | --- | --- | |**Customer Shipping Address**&lt;br&gt;A Customer Shipping Address represents tokenized customer shipping information.&lt;br&gt;A [Customer](#token-management_customer_create-a-customer) can have [one or more Shipping Addresses](#token-management_customer-shipping-address_list-shipping-addresses-for-a-customer), with one allocated as the Customers default for use in payments.|&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;|**Creating a Customer Shipping Address**&lt;br&gt;Your system can use this API to create an existing Customers default or non default Shipping Address.&lt;br&gt;You can also create additional Customer Shipping Addresses via the [Payments API](#payments_payments_process-a-payment_samplerequests-dropdown_authorization-with-token-create_authorization-create-default-payment-instrument-shipping-address-for-existing-customer_liveconsole-tab-request-body). 
    # @param customer_id The Id of a Customer.
    # @param post_customer_shipping_address_request 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :profile_id The Id of a profile containing user specific TMS configuration.
    # @return [Array<(Tmsv2customersEmbeddedDefaultShippingAddress, Fixnum, Hash)>] Tmsv2customersEmbeddedDefaultShippingAddress data, response status code and response headers
    def post_customer_shipping_address_with_http_info(customer_id, post_customer_shipping_address_request, opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: CustomerShippingAddressApi.post_customer_shipping_address ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # verify the required parameter 'customer_id' is set
      if @api_client.config.client_side_validation && customer_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_id' when calling CustomerShippingAddressApi.post_customer_shipping_address"
      end
      # verify the required parameter 'post_customer_shipping_address_request' is set
      if @api_client.config.client_side_validation && post_customer_shipping_address_request.nil?
        fail ArgumentError, "Missing the required parameter 'post_customer_shipping_address_request' when calling CustomerShippingAddressApi.post_customer_shipping_address"
      end
      # resource path
      local_var_path = 'tms/v2/customers/{customerId}/shipping-addresses'.sub('{' + 'customerId' + '}', customer_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json;charset=utf-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=utf-8'])
      header_params[:'profile-id'] = opts[:'profile_id'] if !opts[:'profile_id'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(post_customer_shipping_address_request)
      sdk_tracker = SdkTracker.new
      post_body = sdk_tracker.insert_developer_id_tracker(post_body, 'PostCustomerShippingAddressRequest', @api_client.config.host)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Tmsv2customersEmbeddedDefaultShippingAddress')
      if @api_client.config.debugging
        begin
        raise
            @api_client.config.logger.debug "API called: CustomerShippingAddressApi#post_customer_shipping_address\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
  end
end
