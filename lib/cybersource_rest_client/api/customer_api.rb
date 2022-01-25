=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'uri'

module CyberSource
  class CustomerApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default, config)
      @api_client = api_client
      @api_client.set_configuration(config)
    end
    # Delete a Customer
    # @param customer_token_id The TokenId of a customer.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :profile_id The id of a profile containing user specific TMS configuration.
    # @return [nil]
    def delete_customer(customer_token_id, opts = {})
      data, status_code, headers = delete_customer_with_http_info(customer_token_id, opts)
      return data, status_code, headers
    end

    # Delete a Customer
    # @param customer_token_id The TokenId of a customer.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :profile_id The id of a profile containing user specific TMS configuration.
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_customer_with_http_info(customer_token_id, opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: CustomerApi.delete_customer ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # verify the required parameter 'customer_token_id' is set
      if @api_client.config.client_side_validation && customer_token_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_token_id' when calling CustomerApi.delete_customer"
      end
      if @api_client.config.client_side_validation && customer_token_id.to_s.length > 32
        fail ArgumentError, 'invalid value for "customer_token_id" when calling CustomerApi.delete_customer, the character length must be smaller than or equal to 32.'
      end

      if @api_client.config.client_side_validation && customer_token_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "customer_token_id" when calling CustomerApi.delete_customer, the character length must be great than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'profile_id'].nil? && opts[:'profile_id'].to_s.length > 36
        fail ArgumentError, 'invalid value for "opts[:"profile_id"]" when calling CustomerApi.delete_customer, the character length must be smaller than or equal to 36.'
      end

      if @api_client.config.client_side_validation && !opts[:'profile_id'].nil? && opts[:'profile_id'].to_s.length < 36
        fail ArgumentError, 'invalid value for "opts[:"profile_id"]" when calling CustomerApi.delete_customer, the character length must be great than or equal to 36.'
      end

      # resource path
      local_var_path = 'tms/v2/customers/{customerTokenId}'.sub('{' + 'customerTokenId' + '}', customer_token_id.to_s)

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
            @api_client.config.logger.debug "API called: CustomerApi#delete_customer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
    # Retrieve a Customer
    # @param customer_token_id The TokenId of a customer.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :profile_id The id of a profile containing user specific TMS configuration.
    # @return [TmsV2CustomersResponse]
    def get_customer(customer_token_id, opts = {})
      data, status_code, headers = get_customer_with_http_info(customer_token_id, opts)
      return data, status_code, headers
    end

    # Retrieve a Customer
    # @param customer_token_id The TokenId of a customer.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :profile_id The id of a profile containing user specific TMS configuration.
    # @return [Array<(TmsV2CustomersResponse, Fixnum, Hash)>] TmsV2CustomersResponse data, response status code and response headers
    def get_customer_with_http_info(customer_token_id, opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: CustomerApi.get_customer ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # verify the required parameter 'customer_token_id' is set
      if @api_client.config.client_side_validation && customer_token_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_token_id' when calling CustomerApi.get_customer"
      end
      if @api_client.config.client_side_validation && customer_token_id.to_s.length > 32
        fail ArgumentError, 'invalid value for "customer_token_id" when calling CustomerApi.get_customer, the character length must be smaller than or equal to 32.'
      end

      if @api_client.config.client_side_validation && customer_token_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "customer_token_id" when calling CustomerApi.get_customer, the character length must be great than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'profile_id'].nil? && opts[:'profile_id'].to_s.length > 36
        fail ArgumentError, 'invalid value for "opts[:"profile_id"]" when calling CustomerApi.get_customer, the character length must be smaller than or equal to 36.'
      end

      if @api_client.config.client_side_validation && !opts[:'profile_id'].nil? && opts[:'profile_id'].to_s.length < 36
        fail ArgumentError, 'invalid value for "opts[:"profile_id"]" when calling CustomerApi.get_customer, the character length must be great than or equal to 36.'
      end

      # resource path
      local_var_path = 'tms/v2/customers/{customerTokenId}'.sub('{' + 'customerTokenId' + '}', customer_token_id.to_s)

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
        :return_type => 'TmsV2CustomersResponse')
      if @api_client.config.debugging
        begin
        raise
            @api_client.config.logger.debug "API called: CustomerApi#get_customer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
    # Update a Customer
    # @param customer_token_id The TokenId of a customer.
    # @param patch_customer_request 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :profile_id The id of a profile containing user specific TMS configuration.
    # @option opts [String] :if_match Contains an ETag value from a GET request to make the request conditional.
    # @return [TmsV2CustomersResponse]
    def patch_customer(customer_token_id, patch_customer_request, opts = {})
      data, status_code, headers = patch_customer_with_http_info(customer_token_id, patch_customer_request, opts)
      return data, status_code, headers
    end

    # Update a Customer
    # @param customer_token_id The TokenId of a customer.
    # @param patch_customer_request 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :profile_id The id of a profile containing user specific TMS configuration.
    # @option opts [String] :if_match Contains an ETag value from a GET request to make the request conditional.
    # @return [Array<(TmsV2CustomersResponse, Fixnum, Hash)>] TmsV2CustomersResponse data, response status code and response headers
    def patch_customer_with_http_info(customer_token_id, patch_customer_request, opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: CustomerApi.patch_customer ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # verify the required parameter 'customer_token_id' is set
      if @api_client.config.client_side_validation && customer_token_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_token_id' when calling CustomerApi.patch_customer"
      end
      if @api_client.config.client_side_validation && customer_token_id.to_s.length > 32
        fail ArgumentError, 'invalid value for "customer_token_id" when calling CustomerApi.patch_customer, the character length must be smaller than or equal to 32.'
      end

      if @api_client.config.client_side_validation && customer_token_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "customer_token_id" when calling CustomerApi.patch_customer, the character length must be great than or equal to 1.'
      end

      # verify the required parameter 'patch_customer_request' is set
      if @api_client.config.client_side_validation && patch_customer_request.nil?
        fail ArgumentError, "Missing the required parameter 'patch_customer_request' when calling CustomerApi.patch_customer"
      end
      if @api_client.config.client_side_validation && !opts[:'profile_id'].nil? && opts[:'profile_id'].to_s.length > 36
        fail ArgumentError, 'invalid value for "opts[:"profile_id"]" when calling CustomerApi.patch_customer, the character length must be smaller than or equal to 36.'
      end

      if @api_client.config.client_side_validation && !opts[:'profile_id'].nil? && opts[:'profile_id'].to_s.length < 36
        fail ArgumentError, 'invalid value for "opts[:"profile_id"]" when calling CustomerApi.patch_customer, the character length must be great than or equal to 36.'
      end

      if @api_client.config.client_side_validation && !opts[:'if_match'].nil? && opts[:'if_match'].to_s.length > 32
        fail ArgumentError, 'invalid value for "opts[:"if_match"]" when calling CustomerApi.patch_customer, the character length must be smaller than or equal to 32.'
      end

      if @api_client.config.client_side_validation && !opts[:'if_match'].nil? && opts[:'if_match'].to_s.length < 1
        fail ArgumentError, 'invalid value for "opts[:"if_match"]" when calling CustomerApi.patch_customer, the character length must be great than or equal to 1.'
      end

      # resource path
      local_var_path = 'tms/v2/customers/{customerTokenId}'.sub('{' + 'customerTokenId' + '}', customer_token_id.to_s)

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
      post_body = @api_client.object_to_http_body(patch_customer_request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TmsV2CustomersResponse')
      if @api_client.config.debugging
        begin
        raise
            @api_client.config.logger.debug "API called: CustomerApi#patch_customer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
    # Create a Customer
    # @param post_customer_request 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :profile_id The id of a profile containing user specific TMS configuration.
    # @return [TmsV2CustomersResponse]
    def post_customer(post_customer_request, opts = {})
      data, status_code, headers = post_customer_with_http_info(post_customer_request, opts)
      return data, status_code, headers
    end

    # Create a Customer
    # @param post_customer_request 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :profile_id The id of a profile containing user specific TMS configuration.
    # @return [Array<(TmsV2CustomersResponse, Fixnum, Hash)>] TmsV2CustomersResponse data, response status code and response headers
    def post_customer_with_http_info(post_customer_request, opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: CustomerApi.post_customer ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # verify the required parameter 'post_customer_request' is set
      if @api_client.config.client_side_validation && post_customer_request.nil?
        fail ArgumentError, "Missing the required parameter 'post_customer_request' when calling CustomerApi.post_customer"
      end
      if @api_client.config.client_side_validation && !opts[:'profile_id'].nil? && opts[:'profile_id'].to_s.length > 36
        fail ArgumentError, 'invalid value for "opts[:"profile_id"]" when calling CustomerApi.post_customer, the character length must be smaller than or equal to 36.'
      end

      if @api_client.config.client_side_validation && !opts[:'profile_id'].nil? && opts[:'profile_id'].to_s.length < 36
        fail ArgumentError, 'invalid value for "opts[:"profile_id"]" when calling CustomerApi.post_customer, the character length must be great than or equal to 36.'
      end

      # resource path
      local_var_path = 'tms/v2/customers'

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
      post_body = @api_client.object_to_http_body(post_customer_request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TmsV2CustomersResponse')
      if @api_client.config.debugging
        begin
        raise
            @api_client.config.logger.debug "API called: CustomerApi#post_customer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
  end
end
