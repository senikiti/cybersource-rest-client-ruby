=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.38
=end

require 'uri'

module CyberSource
  class UserManagementSearchApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default, config)
      @api_client = api_client
      @api_client.set_configuration(config)
    end
    # Search User Information
    # This endpoint is to get all the user information depending on the filter criteria passed in request body.
    #
    # @param search_request 
    # @param [Hash] opts the optional parameters
    # @return [UmsV1UsersGet200Response]
    #
    def search_users(search_request, opts = {})
      data, status_code, headers = search_users_with_http_info(search_request, opts)
      return data, status_code, headers
    end

    # Search User Information
    # This endpoint is to get all the user information depending on the filter criteria passed in request body.
    # @param search_request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(UmsV1UsersGet200Response, Fixnum, Hash)>] UmsV1UsersGet200Response data, response status code and response headers
    def search_users_with_http_info(search_request, opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: UserManagementSearchApi.search_users ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # verify the required parameter 'search_request' is set
      if @api_client.config.client_side_validation && search_request.nil?
        fail ArgumentError, "Missing the required parameter 'search_request' when calling UserManagementSearchApi.search_users"
      end
      # resource path
      local_var_path = 'ums/v1/users/search'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/hal+json;charset=utf-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(search_request)
      sdk_tracker = SdkTracker.new
      post_body = sdk_tracker.insert_developer_id_tracker(post_body, 'SearchRequest', @api_client.config.host, @api_client.merchantconfig.defaultDeveloperId)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'UmsV1UsersGet200Response')
      if @api_client.config.debugging
        begin
        raise
            @api_client.config.logger.debug "API called: UserManagementSearchApi#search_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
  end
end
