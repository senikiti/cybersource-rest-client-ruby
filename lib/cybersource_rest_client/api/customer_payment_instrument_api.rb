=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'uri'

module CyberSource
  class CustomerPaymentInstrumentApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default, config)
      @api_client = api_client
	  @api_client.set_configuration(config)
    end
    # Delete a Customer Payment Instrument
    # @param customer_token_id The TokenId of a customer.
    # @param payment_instrument_token_id The TokenId of a payment instrument.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :profile_id The id of a profile containing user specific TMS configuration.
    # @return [nil]
    def delete_customer_payment_instrument(customer_token_id, payment_instrument_token_id, opts = {})
      data, status_code, headers = delete_customer_payment_instrument_with_http_info(customer_token_id, payment_instrument_token_id, opts)
      return data, status_code, headers
    end

    # Delete a Customer Payment Instrument
    # @param customer_token_id The TokenId of a customer.
    # @param payment_instrument_token_id The TokenId of a payment instrument.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :profile_id The id of a profile containing user specific TMS configuration.
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_customer_payment_instrument_with_http_info(customer_token_id, payment_instrument_token_id, opts = {})
      
	  if @api_client.config.debugging
	  	begin
			raise
				@api_client.config.logger.debug 'Calling API: CustomerPaymentInstrumentApi.delete_customer_payment_instrument ...'
			rescue
				puts 'Cannot write to log'
			end
      end
      # verify the required parameter 'customer_token_id' is set
      if @api_client.config.client_side_validation && customer_token_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_token_id' when calling CustomerPaymentInstrumentApi.delete_customer_payment_instrument"
      end
      if @api_client.config.client_side_validation && customer_token_id.to_s.length > 32
        fail ArgumentError, 'invalid value for "customer_token_id" when calling CustomerPaymentInstrumentApi.delete_customer_payment_instrument, the character length must be smaller than or equal to 32.'
      end

      if @api_client.config.client_side_validation && customer_token_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "customer_token_id" when calling CustomerPaymentInstrumentApi.delete_customer_payment_instrument, the character length must be great than or equal to 1.'
      end

      # verify the required parameter 'payment_instrument_token_id' is set
      if @api_client.config.client_side_validation && payment_instrument_token_id.nil?
        fail ArgumentError, "Missing the required parameter 'payment_instrument_token_id' when calling CustomerPaymentInstrumentApi.delete_customer_payment_instrument"
      end
      if @api_client.config.client_side_validation && payment_instrument_token_id.to_s.length > 32
        fail ArgumentError, 'invalid value for "payment_instrument_token_id" when calling CustomerPaymentInstrumentApi.delete_customer_payment_instrument, the character length must be smaller than or equal to 32.'
      end

      if @api_client.config.client_side_validation && payment_instrument_token_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "payment_instrument_token_id" when calling CustomerPaymentInstrumentApi.delete_customer_payment_instrument, the character length must be great than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'profile_id'].nil? && opts[:'profile_id'].to_s.length > 36
        fail ArgumentError, 'invalid value for "opts[:"profile_id"]" when calling CustomerPaymentInstrumentApi.delete_customer_payment_instrument, the character length must be smaller than or equal to 36.'
      end

      if @api_client.config.client_side_validation && !opts[:'profile_id'].nil? && opts[:'profile_id'].to_s.length < 36
        fail ArgumentError, 'invalid value for "opts[:"profile_id"]" when calling CustomerPaymentInstrumentApi.delete_customer_payment_instrument, the character length must be great than or equal to 36.'
      end

      # resource path
      local_var_path = 'tms/v2/customers/{customerTokenId}/payment-instruments/{paymentInstrumentTokenId}'.sub('{' + 'customerTokenId' + '}', customer_token_id.to_s).sub('{' + 'paymentInstrumentTokenId' + '}', payment_instrument_token_id.to_s)

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
      post_body = nil
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
			@api_client.config.logger.debug "API called: CustomerPaymentInstrumentApi#delete_customer_payment_instrument\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
		rescue
			puts 'Cannot write to log'
		end
	  end
      return data, status_code, headers
    end
    # Retrieve a Customer Payment Instrument
    # @param customer_token_id The TokenId of a customer.
    # @param payment_instrument_token_id The TokenId of a payment instrument.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :profile_id The id of a profile containing user specific TMS configuration.
    # @return [Tmsv2customersEmbeddedDefaultPaymentInstrument]
    def get_customer_payment_instrument(customer_token_id, payment_instrument_token_id, opts = {})
      data, status_code, headers = get_customer_payment_instrument_with_http_info(customer_token_id, payment_instrument_token_id, opts)
      return data, status_code, headers
    end

    # Retrieve a Customer Payment Instrument
    # @param customer_token_id The TokenId of a customer.
    # @param payment_instrument_token_id The TokenId of a payment instrument.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :profile_id The id of a profile containing user specific TMS configuration.
    # @return [Array<(Tmsv2customersEmbeddedDefaultPaymentInstrument, Fixnum, Hash)>] Tmsv2customersEmbeddedDefaultPaymentInstrument data, response status code and response headers
    def get_customer_payment_instrument_with_http_info(customer_token_id, payment_instrument_token_id, opts = {})
      
	  if @api_client.config.debugging
	  	begin
			raise
				@api_client.config.logger.debug 'Calling API: CustomerPaymentInstrumentApi.get_customer_payment_instrument ...'
			rescue
				puts 'Cannot write to log'
			end
      end
      # verify the required parameter 'customer_token_id' is set
      if @api_client.config.client_side_validation && customer_token_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_token_id' when calling CustomerPaymentInstrumentApi.get_customer_payment_instrument"
      end
      if @api_client.config.client_side_validation && customer_token_id.to_s.length > 32
        fail ArgumentError, 'invalid value for "customer_token_id" when calling CustomerPaymentInstrumentApi.get_customer_payment_instrument, the character length must be smaller than or equal to 32.'
      end

      if @api_client.config.client_side_validation && customer_token_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "customer_token_id" when calling CustomerPaymentInstrumentApi.get_customer_payment_instrument, the character length must be great than or equal to 1.'
      end

      # verify the required parameter 'payment_instrument_token_id' is set
      if @api_client.config.client_side_validation && payment_instrument_token_id.nil?
        fail ArgumentError, "Missing the required parameter 'payment_instrument_token_id' when calling CustomerPaymentInstrumentApi.get_customer_payment_instrument"
      end
      if @api_client.config.client_side_validation && payment_instrument_token_id.to_s.length > 32
        fail ArgumentError, 'invalid value for "payment_instrument_token_id" when calling CustomerPaymentInstrumentApi.get_customer_payment_instrument, the character length must be smaller than or equal to 32.'
      end

      if @api_client.config.client_side_validation && payment_instrument_token_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "payment_instrument_token_id" when calling CustomerPaymentInstrumentApi.get_customer_payment_instrument, the character length must be great than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'profile_id'].nil? && opts[:'profile_id'].to_s.length > 36
        fail ArgumentError, 'invalid value for "opts[:"profile_id"]" when calling CustomerPaymentInstrumentApi.get_customer_payment_instrument, the character length must be smaller than or equal to 36.'
      end

      if @api_client.config.client_side_validation && !opts[:'profile_id'].nil? && opts[:'profile_id'].to_s.length < 36
        fail ArgumentError, 'invalid value for "opts[:"profile_id"]" when calling CustomerPaymentInstrumentApi.get_customer_payment_instrument, the character length must be great than or equal to 36.'
      end

      # resource path
      local_var_path = 'tms/v2/customers/{customerTokenId}/payment-instruments/{paymentInstrumentTokenId}'.sub('{' + 'customerTokenId' + '}', customer_token_id.to_s).sub('{' + 'paymentInstrumentTokenId' + '}', payment_instrument_token_id.to_s)

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
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Tmsv2customersEmbeddedDefaultPaymentInstrument')
      if @api_client.config.debugging
		begin
		raise
			@api_client.config.logger.debug "API called: CustomerPaymentInstrumentApi#get_customer_payment_instrument\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
		rescue
			puts 'Cannot write to log'
		end
	  end
      return data, status_code, headers
    end
    # List Payment Instruments for a Customer
    # @param customer_token_id The TokenId of a customer.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :profile_id The id of a profile containing user specific TMS configuration.
    # @option opts [Integer] :offset Starting record in zero-based dataset that should be returned as the first object in the array. Default is 0. (default to 0)
    # @option opts [Integer] :limit The maximum number that can be returned in the array starting from the offset record in zero-based dataset. Default is 20, maximum is 100. (default to 20)
    # @return [PaymentInstrumentList]
    def get_customer_payment_instruments_list(customer_token_id, opts = {})
      data, status_code, headers = get_customer_payment_instruments_list_with_http_info(customer_token_id, opts)
      return data, status_code, headers
    end

    # List Payment Instruments for a Customer
    # @param customer_token_id The TokenId of a customer.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :profile_id The id of a profile containing user specific TMS configuration.
    # @option opts [Integer] :offset Starting record in zero-based dataset that should be returned as the first object in the array. Default is 0.
    # @option opts [Integer] :limit The maximum number that can be returned in the array starting from the offset record in zero-based dataset. Default is 20, maximum is 100.
    # @return [Array<(PaymentInstrumentList, Fixnum, Hash)>] PaymentInstrumentList data, response status code and response headers
    def get_customer_payment_instruments_list_with_http_info(customer_token_id, opts = {})
      
	  if @api_client.config.debugging
	  	begin
			raise
				@api_client.config.logger.debug 'Calling API: CustomerPaymentInstrumentApi.get_customer_payment_instruments_list ...'
			rescue
				puts 'Cannot write to log'
			end
      end
      # verify the required parameter 'customer_token_id' is set
      if @api_client.config.client_side_validation && customer_token_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_token_id' when calling CustomerPaymentInstrumentApi.get_customer_payment_instruments_list"
      end
      if @api_client.config.client_side_validation && customer_token_id.to_s.length > 32
        fail ArgumentError, 'invalid value for "customer_token_id" when calling CustomerPaymentInstrumentApi.get_customer_payment_instruments_list, the character length must be smaller than or equal to 32.'
      end

      if @api_client.config.client_side_validation && customer_token_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "customer_token_id" when calling CustomerPaymentInstrumentApi.get_customer_payment_instruments_list, the character length must be great than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'profile_id'].nil? && opts[:'profile_id'].to_s.length > 36
        fail ArgumentError, 'invalid value for "opts[:"profile_id"]" when calling CustomerPaymentInstrumentApi.get_customer_payment_instruments_list, the character length must be smaller than or equal to 36.'
      end

      if @api_client.config.client_side_validation && !opts[:'profile_id'].nil? && opts[:'profile_id'].to_s.length < 36
        fail ArgumentError, 'invalid value for "opts[:"profile_id"]" when calling CustomerPaymentInstrumentApi.get_customer_payment_instruments_list, the character length must be great than or equal to 36.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling CustomerPaymentInstrumentApi.get_customer_payment_instruments_list, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling CustomerPaymentInstrumentApi.get_customer_payment_instruments_list, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling CustomerPaymentInstrumentApi.get_customer_payment_instruments_list, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = 'tms/v2/customers/{customerTokenId}/payment-instruments'.sub('{' + 'customerTokenId' + '}', customer_token_id.to_s)

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
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PaymentInstrumentList')
      if @api_client.config.debugging
		begin
		raise
			@api_client.config.logger.debug "API called: CustomerPaymentInstrumentApi#get_customer_payment_instruments_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
		rescue
			puts 'Cannot write to log'
		end
	  end
      return data, status_code, headers
    end
    # Update a Customer Payment Instrument
    # @param customer_token_id The TokenId of a customer.
    # @param payment_instrument_token_id The TokenId of a payment instrument.
    # @param patch_customer_payment_instrument_request 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :profile_id The id of a profile containing user specific TMS configuration.
    # @option opts [String] :if_match Contains an ETag value from a GET request to make the request conditional.
    # @return [Tmsv2customersEmbeddedDefaultPaymentInstrument]
    def patch_customers_payment_instrument(customer_token_id, payment_instrument_token_id, patch_customer_payment_instrument_request, opts = {})
      data, status_code, headers = patch_customers_payment_instrument_with_http_info(customer_token_id, payment_instrument_token_id, patch_customer_payment_instrument_request, opts)
      return data, status_code, headers
    end

    # Update a Customer Payment Instrument
    # @param customer_token_id The TokenId of a customer.
    # @param payment_instrument_token_id The TokenId of a payment instrument.
    # @param patch_customer_payment_instrument_request 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :profile_id The id of a profile containing user specific TMS configuration.
    # @option opts [String] :if_match Contains an ETag value from a GET request to make the request conditional.
    # @return [Array<(Tmsv2customersEmbeddedDefaultPaymentInstrument, Fixnum, Hash)>] Tmsv2customersEmbeddedDefaultPaymentInstrument data, response status code and response headers
    def patch_customers_payment_instrument_with_http_info(customer_token_id, payment_instrument_token_id, patch_customer_payment_instrument_request, opts = {})
      
	  if @api_client.config.debugging
	  	begin
			raise
				@api_client.config.logger.debug 'Calling API: CustomerPaymentInstrumentApi.patch_customers_payment_instrument ...'
			rescue
				puts 'Cannot write to log'
			end
      end
      # verify the required parameter 'customer_token_id' is set
      if @api_client.config.client_side_validation && customer_token_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_token_id' when calling CustomerPaymentInstrumentApi.patch_customers_payment_instrument"
      end
      if @api_client.config.client_side_validation && customer_token_id.to_s.length > 32
        fail ArgumentError, 'invalid value for "customer_token_id" when calling CustomerPaymentInstrumentApi.patch_customers_payment_instrument, the character length must be smaller than or equal to 32.'
      end

      if @api_client.config.client_side_validation && customer_token_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "customer_token_id" when calling CustomerPaymentInstrumentApi.patch_customers_payment_instrument, the character length must be great than or equal to 1.'
      end

      # verify the required parameter 'payment_instrument_token_id' is set
      if @api_client.config.client_side_validation && payment_instrument_token_id.nil?
        fail ArgumentError, "Missing the required parameter 'payment_instrument_token_id' when calling CustomerPaymentInstrumentApi.patch_customers_payment_instrument"
      end
      if @api_client.config.client_side_validation && payment_instrument_token_id.to_s.length > 32
        fail ArgumentError, 'invalid value for "payment_instrument_token_id" when calling CustomerPaymentInstrumentApi.patch_customers_payment_instrument, the character length must be smaller than or equal to 32.'
      end

      if @api_client.config.client_side_validation && payment_instrument_token_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "payment_instrument_token_id" when calling CustomerPaymentInstrumentApi.patch_customers_payment_instrument, the character length must be great than or equal to 1.'
      end

      # verify the required parameter 'patch_customer_payment_instrument_request' is set
      if @api_client.config.client_side_validation && patch_customer_payment_instrument_request.nil?
        fail ArgumentError, "Missing the required parameter 'patch_customer_payment_instrument_request' when calling CustomerPaymentInstrumentApi.patch_customers_payment_instrument"
      end
      if @api_client.config.client_side_validation && !opts[:'profile_id'].nil? && opts[:'profile_id'].to_s.length > 36
        fail ArgumentError, 'invalid value for "opts[:"profile_id"]" when calling CustomerPaymentInstrumentApi.patch_customers_payment_instrument, the character length must be smaller than or equal to 36.'
      end

      if @api_client.config.client_side_validation && !opts[:'profile_id'].nil? && opts[:'profile_id'].to_s.length < 36
        fail ArgumentError, 'invalid value for "opts[:"profile_id"]" when calling CustomerPaymentInstrumentApi.patch_customers_payment_instrument, the character length must be great than or equal to 36.'
      end

      if @api_client.config.client_side_validation && !opts[:'if_match'].nil? && opts[:'if_match'].to_s.length > 32
        fail ArgumentError, 'invalid value for "opts[:"if_match"]" when calling CustomerPaymentInstrumentApi.patch_customers_payment_instrument, the character length must be smaller than or equal to 32.'
      end

      if @api_client.config.client_side_validation && !opts[:'if_match'].nil? && opts[:'if_match'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"if_match"]" when calling CustomerPaymentInstrumentApi.patch_customers_payment_instrument, the character length must be great than or equal to 1.'
      end

      # resource path
      local_var_path = 'tms/v2/customers/{customerTokenId}/payment-instruments/{paymentInstrumentTokenId}'.sub('{' + 'customerTokenId' + '}', customer_token_id.to_s).sub('{' + 'paymentInstrumentTokenId' + '}', payment_instrument_token_id.to_s)

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
      post_body = @api_client.object_to_http_body(patch_customer_payment_instrument_request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Tmsv2customersEmbeddedDefaultPaymentInstrument')
      if @api_client.config.debugging
		begin
		raise
			@api_client.config.logger.debug "API called: CustomerPaymentInstrumentApi#patch_customers_payment_instrument\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
		rescue
			puts 'Cannot write to log'
		end
	  end
      return data, status_code, headers
    end
    # Create a Customer Payment Instrument
    # Include an existing TMS Customer & Instrument Identifier token id in the request. * A Customer token can be created by calling: **POST */tms/v2/customers*** * An Instrument Identifier token can be created by calling: **POST */tms/v1/instrumentidentifiers*** 
    # @param customer_token_id The TokenId of a customer.
    # @param post_customer_payment_instrument_request 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :profile_id The id of a profile containing user specific TMS configuration.
    # @return [Tmsv2customersEmbeddedDefaultPaymentInstrument]
    def post_customer_payment_instrument(customer_token_id, post_customer_payment_instrument_request, opts = {})
      data, status_code, headers = post_customer_payment_instrument_with_http_info(customer_token_id, post_customer_payment_instrument_request, opts)
      return data, status_code, headers
    end

    # Create a Customer Payment Instrument
    # Include an existing TMS Customer &amp; Instrument Identifier token id in the request. * A Customer token can be created by calling: **POST */tms/v2/customers*** * An Instrument Identifier token can be created by calling: **POST */tms/v1/instrumentidentifiers*** 
    # @param customer_token_id The TokenId of a customer.
    # @param post_customer_payment_instrument_request 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :profile_id The id of a profile containing user specific TMS configuration.
    # @return [Array<(Tmsv2customersEmbeddedDefaultPaymentInstrument, Fixnum, Hash)>] Tmsv2customersEmbeddedDefaultPaymentInstrument data, response status code and response headers
    def post_customer_payment_instrument_with_http_info(customer_token_id, post_customer_payment_instrument_request, opts = {})
      
	  if @api_client.config.debugging
	  	begin
			raise
				@api_client.config.logger.debug 'Calling API: CustomerPaymentInstrumentApi.post_customer_payment_instrument ...'
			rescue
				puts 'Cannot write to log'
			end
      end
      # verify the required parameter 'customer_token_id' is set
      if @api_client.config.client_side_validation && customer_token_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_token_id' when calling CustomerPaymentInstrumentApi.post_customer_payment_instrument"
      end
      if @api_client.config.client_side_validation && customer_token_id.to_s.length > 32
        fail ArgumentError, 'invalid value for "customer_token_id" when calling CustomerPaymentInstrumentApi.post_customer_payment_instrument, the character length must be smaller than or equal to 32.'
      end

      if @api_client.config.client_side_validation && customer_token_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "customer_token_id" when calling CustomerPaymentInstrumentApi.post_customer_payment_instrument, the character length must be great than or equal to 1.'
      end

      # verify the required parameter 'post_customer_payment_instrument_request' is set
      if @api_client.config.client_side_validation && post_customer_payment_instrument_request.nil?
        fail ArgumentError, "Missing the required parameter 'post_customer_payment_instrument_request' when calling CustomerPaymentInstrumentApi.post_customer_payment_instrument"
      end
      if @api_client.config.client_side_validation && !opts[:'profile_id'].nil? && opts[:'profile_id'].to_s.length > 36
        fail ArgumentError, 'invalid value for "opts[:"profile_id"]" when calling CustomerPaymentInstrumentApi.post_customer_payment_instrument, the character length must be smaller than or equal to 36.'
      end

      if @api_client.config.client_side_validation && !opts[:'profile_id'].nil? && opts[:'profile_id'].to_s.length < 36
        fail ArgumentError, 'invalid value for "opts[:"profile_id"]" when calling CustomerPaymentInstrumentApi.post_customer_payment_instrument, the character length must be great than or equal to 36.'
      end

      # resource path
      local_var_path = 'tms/v2/customers/{customerTokenId}/payment-instruments'.sub('{' + 'customerTokenId' + '}', customer_token_id.to_s)

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
      post_body = @api_client.object_to_http_body(post_customer_payment_instrument_request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Tmsv2customersEmbeddedDefaultPaymentInstrument')
      if @api_client.config.debugging
		begin
		raise
			@api_client.config.logger.debug "API called: CustomerPaymentInstrumentApi#post_customer_payment_instrument\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
		rescue
			puts 'Cannot write to log'
		end
	  end
      return data, status_code, headers
    end
  end
end
