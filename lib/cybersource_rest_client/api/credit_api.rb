=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'uri'

module CyberSource
  class CreditApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default, config)
      @api_client = api_client
      @api_client.set_configuration(config)
    end
    # Process a Credit
    # POST to the credit resource to credit funds to a specified credit card.
    # @param create_credit_request 
    # @param [Hash] opts the optional parameters
    # @return [PtsV2CreditsPost201Response]
    def create_credit(create_credit_request, opts = {})
      data, status_code, headers = create_credit_with_http_info(create_credit_request, opts)
      return data, status_code, headers
    end

    # Process a Credit
    # POST to the credit resource to credit funds to a specified credit card.
    # @param create_credit_request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PtsV2CreditsPost201Response, Fixnum, Hash)>] PtsV2CreditsPost201Response data, response status code and response headers
    def create_credit_with_http_info(create_credit_request, opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: CreditApi.create_credit ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # verify the required parameter 'create_credit_request' is set
      if @api_client.config.client_side_validation && create_credit_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_credit_request' when calling CreditApi.create_credit"
      end
      # resource path
      local_var_path = 'pts/v2/credits'

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
      post_body = @api_client.object_to_http_body(create_credit_request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PtsV2CreditsPost201Response')
      if @api_client.config.debugging
        begin
        raise
            @api_client.config.logger.debug "API called: CreditApi#create_credit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
  end
end
