=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'uri'

module CyberSource
  class SubscriptionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default, config)
      @api_client = api_client
      @api_client.set_configuration(config)
    end
    # Activate a Subscription
    # Activate a `CANCELLED` Or `SUSPENDED` Subscription 
    #
    # @param id Subscription Id
    # @param [Hash] opts the optional parameters
    # @return [ActivateSubscriptionResponse]
    #
    def activate_subscription(id, opts = {})
      data, status_code, headers = activate_subscription_with_http_info(id, opts)
      return data, status_code, headers
    end

    # Activate a Subscription
    # Activate a &#x60;CANCELLED&#x60; Or &#x60;SUSPENDED&#x60; Subscription 
    # @param id Subscription Id
    # @param [Hash] opts the optional parameters
    # @return [Array<(ActivateSubscriptionResponse, Fixnum, Hash)>] ActivateSubscriptionResponse data, response status code and response headers
    def activate_subscription_with_http_info(id, opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: SubscriptionsApi.activate_subscription ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SubscriptionsApi.activate_subscription"
      end
      # resource path
      local_var_path = 'rbs/v1/subscriptions/{id}/activate'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/hal+json', 'application/json;charset=utf-8', 'application/hal+json;charset=utf-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=utf-8'])

      # form parameters
      form_params = {}

      # http body (model)
      if 'POST' == 'POST'
        post_body = '{}'
      else
        post_body = nil
      end
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ActivateSubscriptionResponse')
      if @api_client.config.debugging
        begin
        raise
            @api_client.config.logger.debug "API called: SubscriptionsApi#activate_subscription\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
    # Cancel a Subscription
    # Cancel a Subscription
    #
    # @param id Subscription Id
    # @param [Hash] opts the optional parameters
    # @return [CancelSubscriptionResponse]
    #
    def cancel_subscription(id, opts = {})
      data, status_code, headers = cancel_subscription_with_http_info(id, opts)
      return data, status_code, headers
    end

    # Cancel a Subscription
    # Cancel a Subscription
    # @param id Subscription Id
    # @param [Hash] opts the optional parameters
    # @return [Array<(CancelSubscriptionResponse, Fixnum, Hash)>] CancelSubscriptionResponse data, response status code and response headers
    def cancel_subscription_with_http_info(id, opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: SubscriptionsApi.cancel_subscription ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SubscriptionsApi.cancel_subscription"
      end
      # resource path
      local_var_path = 'rbs/v1/subscriptions/{id}/cancel'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/hal+json', 'application/json;charset=utf-8', 'application/hal+json;charset=utf-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=utf-8'])

      # form parameters
      form_params = {}

      # http body (model)
      if 'POST' == 'POST'
        post_body = '{}'
      else
        post_body = nil
      end
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CancelSubscriptionResponse')
      if @api_client.config.debugging
        begin
        raise
            @api_client.config.logger.debug "API called: SubscriptionsApi#cancel_subscription\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
    # Create a Subscription
    # Create a Recurring Billing Subscription
    #
    # @param create_subscription_request 
    # @param [Hash] opts the optional parameters
    # @return [CreateSubscriptionResponse]
    #
    def create_subscription(create_subscription_request, opts = {})
      data, status_code, headers = create_subscription_with_http_info(create_subscription_request, opts)
      return data, status_code, headers
    end

    # Create a Subscription
    # Create a Recurring Billing Subscription
    # @param create_subscription_request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreateSubscriptionResponse, Fixnum, Hash)>] CreateSubscriptionResponse data, response status code and response headers
    def create_subscription_with_http_info(create_subscription_request, opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: SubscriptionsApi.create_subscription ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # verify the required parameter 'create_subscription_request' is set
      if @api_client.config.client_side_validation && create_subscription_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_subscription_request' when calling SubscriptionsApi.create_subscription"
      end
      # resource path
      local_var_path = 'rbs/v1/subscriptions'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/hal+json', 'application/json;charset=utf-8', 'application/hal+json;charset=utf-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=utf-8'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(create_subscription_request)
      sdk_tracker = SdkTracker.new
      post_body = sdk_tracker.insert_developer_id_tracker(post_body, 'CreateSubscriptionRequest', @api_client.config.host)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CreateSubscriptionResponse')
      if @api_client.config.debugging
        begin
        raise
            @api_client.config.logger.debug "API called: SubscriptionsApi#create_subscription\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
    # Get a List of Subscriptions
    # Retrieve Subscriptions by Subscription Code & Subscription Status. 
    #
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset Page offset number.
    # @option opts [Integer] :limit Number of items to be returned. Default - &#x60;20&#x60;, Max - &#x60;100&#x60; 
    # @option opts [String] :code Filter by Subscription Code
    # @option opts [String] :status Filter by Subscription Status
    # @return [GetAllSubscriptionsResponse]
    #
    def get_all_subscriptions(opts = {})
      data, status_code, headers = get_all_subscriptions_with_http_info(opts)
      return data, status_code, headers
    end

    # Get a List of Subscriptions
    # Retrieve Subscriptions by Subscription Code &amp; Subscription Status. 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset Page offset number.
    # @option opts [Integer] :limit Number of items to be returned. Default - &#x60;20&#x60;, Max - &#x60;100&#x60; 
    # @option opts [String] :code Filter by Subscription Code
    # @option opts [String] :status Filter by Subscription Status
    # @return [Array<(GetAllSubscriptionsResponse, Fixnum, Hash)>] GetAllSubscriptionsResponse data, response status code and response headers
    def get_all_subscriptions_with_http_info(opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: SubscriptionsApi.get_all_subscriptions ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # resource path
      local_var_path = 'rbs/v1/subscriptions'

      # query parameters
      query_params = {}
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'code'] = opts[:'code'] if !opts[:'code'].nil?
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/hal+json', 'application/json;charset=utf-8', 'application/hal+json;charset=utf-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=utf-8'])

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
        :return_type => 'GetAllSubscriptionsResponse')
      if @api_client.config.debugging
        begin
        raise
            @api_client.config.logger.debug "API called: SubscriptionsApi#get_all_subscriptions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
    # Get a Subscription
    # Get a Subscription by Subscription Id
    #
    # @param id Subscription Id
    # @param [Hash] opts the optional parameters
    # @return [GetSubscriptionResponse]
    #
    def get_subscription(id, opts = {})
      data, status_code, headers = get_subscription_with_http_info(id, opts)
      return data, status_code, headers
    end

    # Get a Subscription
    # Get a Subscription by Subscription Id
    # @param id Subscription Id
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetSubscriptionResponse, Fixnum, Hash)>] GetSubscriptionResponse data, response status code and response headers
    def get_subscription_with_http_info(id, opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: SubscriptionsApi.get_subscription ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SubscriptionsApi.get_subscription"
      end
      # resource path
      local_var_path = 'rbs/v1/subscriptions/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/hal+json', 'application/json;charset=utf-8', 'application/hal+json;charset=utf-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=utf-8'])

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
        :return_type => 'GetSubscriptionResponse')
      if @api_client.config.debugging
        begin
        raise
            @api_client.config.logger.debug "API called: SubscriptionsApi#get_subscription\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
    # Get a Subscription Code
    # Get a Unique Subscription Code
    #
    # @param [Hash] opts the optional parameters
    # @return [GetSubscriptionCodeResponse]
    #
    def get_subscription_code(opts = {})
      data, status_code, headers = get_subscription_code_with_http_info(opts)
      return data, status_code, headers
    end

    # Get a Subscription Code
    # Get a Unique Subscription Code
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetSubscriptionCodeResponse, Fixnum, Hash)>] GetSubscriptionCodeResponse data, response status code and response headers
    def get_subscription_code_with_http_info(opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: SubscriptionsApi.get_subscription_code ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # resource path
      local_var_path = 'rbs/v1/subscriptions/code'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/hal+json', 'application/json;charset=utf-8', 'application/hal+json;charset=utf-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=utf-8'])

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
        :return_type => 'GetSubscriptionCodeResponse')
      if @api_client.config.debugging
        begin
        raise
            @api_client.config.logger.debug "API called: SubscriptionsApi#get_subscription_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
    # Suspend a Subscription
    # Suspend a Subscription
    #
    # @param id Subscription Id
    # @param [Hash] opts the optional parameters
    # @return [SuspendSubscriptionResponse]
    #
    def suspend_subscription(id, opts = {})
      data, status_code, headers = suspend_subscription_with_http_info(id, opts)
      return data, status_code, headers
    end

    # Suspend a Subscription
    # Suspend a Subscription
    # @param id Subscription Id
    # @param [Hash] opts the optional parameters
    # @return [Array<(SuspendSubscriptionResponse, Fixnum, Hash)>] SuspendSubscriptionResponse data, response status code and response headers
    def suspend_subscription_with_http_info(id, opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: SubscriptionsApi.suspend_subscription ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SubscriptionsApi.suspend_subscription"
      end
      # resource path
      local_var_path = 'rbs/v1/subscriptions/{id}/suspend'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/hal+json', 'application/json;charset=utf-8', 'application/hal+json;charset=utf-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=utf-8'])

      # form parameters
      form_params = {}

      # http body (model)
      if 'POST' == 'POST'
        post_body = '{}'
      else
        post_body = nil
      end
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SuspendSubscriptionResponse')
      if @api_client.config.debugging
        begin
        raise
            @api_client.config.logger.debug "API called: SubscriptionsApi#suspend_subscription\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
    # Update a Subscription
    # Update a Subscription by Subscription Id
    #
    # @param id Subscription Id
    # @param update_subscription Update Subscription
    # @param [Hash] opts the optional parameters
    # @return [UpdateSubscriptionResponse]
    #
    def update_subscription(id, update_subscription, opts = {})
      data, status_code, headers = update_subscription_with_http_info(id, update_subscription, opts)
      return data, status_code, headers
    end

    # Update a Subscription
    # Update a Subscription by Subscription Id
    # @param id Subscription Id
    # @param update_subscription Update Subscription
    # @param [Hash] opts the optional parameters
    # @return [Array<(UpdateSubscriptionResponse, Fixnum, Hash)>] UpdateSubscriptionResponse data, response status code and response headers
    def update_subscription_with_http_info(id, update_subscription, opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: SubscriptionsApi.update_subscription ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SubscriptionsApi.update_subscription"
      end
      # verify the required parameter 'update_subscription' is set
      if @api_client.config.client_side_validation && update_subscription.nil?
        fail ArgumentError, "Missing the required parameter 'update_subscription' when calling SubscriptionsApi.update_subscription"
      end
      # resource path
      local_var_path = 'rbs/v1/subscriptions/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/hal+json', 'application/json;charset=utf-8', 'application/hal+json;charset=utf-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=utf-8'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(update_subscription)
      sdk_tracker = SdkTracker.new
      post_body = sdk_tracker.insert_developer_id_tracker(post_body, 'UpdateSubscription', @api_client.config.host)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'UpdateSubscriptionResponse')
      if @api_client.config.debugging
        begin
        raise
            @api_client.config.logger.debug "API called: SubscriptionsApi#update_subscription\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
  end
end
