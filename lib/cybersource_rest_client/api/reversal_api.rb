=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.38
=end

require 'uri'

module CyberSource
  class ReversalApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default, config)
      @api_client = api_client
      @api_client.set_configuration(config)
    end
    # Process an Authorization Reversal
    # Include the payment ID in the POST request to reverse the payment amount.
    #
    # @param id The payment ID returned from a previous payment request.
    # @param auth_reversal_request 
    # @param [Hash] opts the optional parameters
    # @return [PtsV2PaymentsReversalsPost201Response]
    #
    def auth_reversal(id, auth_reversal_request, opts = {})
      data, status_code, headers = auth_reversal_with_http_info(id, auth_reversal_request, opts)
      return data, status_code, headers
    end

    # Process an Authorization Reversal
    # Include the payment ID in the POST request to reverse the payment amount.
    # @param id The payment ID returned from a previous payment request.
    # @param auth_reversal_request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PtsV2PaymentsReversalsPost201Response, Fixnum, Hash)>] PtsV2PaymentsReversalsPost201Response data, response status code and response headers
    def auth_reversal_with_http_info(id, auth_reversal_request, opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: ReversalApi.auth_reversal ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ReversalApi.auth_reversal"
      end
      # verify the required parameter 'auth_reversal_request' is set
      if @api_client.config.client_side_validation && auth_reversal_request.nil?
        fail ArgumentError, "Missing the required parameter 'auth_reversal_request' when calling ReversalApi.auth_reversal"
      end
      # resource path
      local_var_path = 'pts/v2/payments/{id}/reversals'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/hal+json;charset=utf-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=utf-8'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(auth_reversal_request)
      sdk_tracker = SdkTracker.new
      post_body = sdk_tracker.insert_developer_id_tracker(post_body, 'AuthReversalRequest', @api_client.config.host)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PtsV2PaymentsReversalsPost201Response')
      if @api_client.config.debugging
        begin
        raise
            @api_client.config.logger.debug "API called: ReversalApi#auth_reversal\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
    # Timeout Reversal
    # This is to reverse a previous payment that merchant does not receive a reply(Mostly due to Timeout). To use this feature/API, make sure to pass unique value to field - clientReferenceInformation -> transactionId in [/pts/v2/payments](https://developer.cybersource.com/api-reference-assets/index.html#payments_payments) API call and use same transactionId in this API request payload to reverse the payment.
    #
    # @param mit_reversal_request 
    # @param [Hash] opts the optional parameters
    # @return [PtsV2PaymentsReversalsPost201Response]
    #
    def mit_reversal(mit_reversal_request, opts = {})
      data, status_code, headers = mit_reversal_with_http_info(mit_reversal_request, opts)
      return data, status_code, headers
    end

    # Timeout Reversal
    # This is to reverse a previous payment that merchant does not receive a reply(Mostly due to Timeout). To use this feature/API, make sure to pass unique value to field - clientReferenceInformation -&gt; transactionId in [/pts/v2/payments](https://developer.cybersource.com/api-reference-assets/index.html#payments_payments) API call and use same transactionId in this API request payload to reverse the payment.
    # @param mit_reversal_request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PtsV2PaymentsReversalsPost201Response, Fixnum, Hash)>] PtsV2PaymentsReversalsPost201Response data, response status code and response headers
    def mit_reversal_with_http_info(mit_reversal_request, opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: ReversalApi.mit_reversal ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # verify the required parameter 'mit_reversal_request' is set
      if @api_client.config.client_side_validation && mit_reversal_request.nil?
        fail ArgumentError, "Missing the required parameter 'mit_reversal_request' when calling ReversalApi.mit_reversal"
      end
      # resource path
      local_var_path = 'pts/v2/reversals'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/hal+json;charset=utf-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=utf-8'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(mit_reversal_request)
      sdk_tracker = SdkTracker.new
      post_body = sdk_tracker.insert_developer_id_tracker(post_body, 'MitReversalRequest', @api_client.config.host)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PtsV2PaymentsReversalsPost201Response')
      if @api_client.config.debugging
        begin
        raise
            @api_client.config.logger.debug "API called: ReversalApi#mit_reversal\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
  end
end
