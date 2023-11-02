=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'uri'

module CyberSource
  class ManageWebhooksApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default, config)
      @api_client = api_client
      @api_client.set_configuration(config)
    end
    # Delete a Webhook Subscription
    # Delete the webhook. Please note that deleting a particular webhook does not delete the history of the webhook notifications.
    # @param webhook_id The webhook identifier.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_webhook_subscription(webhook_id, opts = {})
      data, status_code, headers = delete_webhook_subscription_with_http_info(webhook_id, opts)
      return data, status_code, headers
    end

    # Delete a Webhook Subscription
    # Delete the webhook. Please note that deleting a particular webhook does not delete the history of the webhook notifications.
    # @param webhook_id The webhook identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_webhook_subscription_with_http_info(webhook_id, opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: ManageWebhooksApi.delete_webhook_subscription ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # verify the required parameter 'webhook_id' is set
      if @api_client.config.client_side_validation && webhook_id.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_id' when calling ManageWebhooksApi.delete_webhook_subscription"
      end
      # resource path
      local_var_path = 'notification-subscriptions/v1/webhooks/{webhookId}'.sub('{' + 'webhookId' + '}', webhook_id.to_s)

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
            @api_client.config.logger.debug "API called: ManageWebhooksApi#delete_webhook_subscription\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
    # Get Details On All Created Webhooks
    # Retrieve a list of all previously created webhooks.
    # @param organization_id The Organization Identifier.
    # @param product_id The Product Identifier.
    # @param event_type The Event Type.
    # @param [Hash] opts the optional parameters
    # @return [Array<InlineResponse2004>]
    def get_all_webhooks(organization_id, product_id, event_type, opts = {})
      data, status_code, headers = get_all_webhooks_with_http_info(organization_id, product_id, event_type, opts)
      return data, status_code, headers
    end

    # Get Details On All Created Webhooks
    # Retrieve a list of all previously created webhooks.
    # @param organization_id The Organization Identifier.
    # @param product_id The Product Identifier.
    # @param event_type The Event Type.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<InlineResponse2004>, Fixnum, Hash)>] Array<InlineResponse2004> data, response status code and response headers
    def get_all_webhooks_with_http_info(organization_id, product_id, event_type, opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: ManageWebhooksApi.get_all_webhooks ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # verify the required parameter 'organization_id' is set
      if @api_client.config.client_side_validation && organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'organization_id' when calling ManageWebhooksApi.get_all_webhooks"
      end
      # verify the required parameter 'product_id' is set
      if @api_client.config.client_side_validation && product_id.nil?
        fail ArgumentError, "Missing the required parameter 'product_id' when calling ManageWebhooksApi.get_all_webhooks"
      end
      # verify the required parameter 'event_type' is set
      if @api_client.config.client_side_validation && event_type.nil?
        fail ArgumentError, "Missing the required parameter 'event_type' when calling ManageWebhooksApi.get_all_webhooks"
      end
      # resource path
      local_var_path = 'notification-subscriptions/v1/webhooks'

      # query parameters
      query_params = {}
      query_params[:'organizationId'] = organization_id
      query_params[:'productId'] = product_id
      query_params[:'eventType'] = event_type

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/hal+json;charset=utf-8'])
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
        :return_type => 'Array<InlineResponse2004>')
      if @api_client.config.debugging
        begin
        raise
            @api_client.config.logger.debug "API called: ManageWebhooksApi#get_all_webhooks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
    # Get Details On a Single Webhook
    # Retrieve the details of a specific webhook by supplying the webhook ID in the path.
    # @param webhook_id The webhook Identifier
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2004]
    def get_webhook_details(webhook_id, opts = {})
      data, status_code, headers = get_webhook_details_with_http_info(webhook_id, opts)
      return data, status_code, headers
    end

    # Get Details On a Single Webhook
    # Retrieve the details of a specific webhook by supplying the webhook ID in the path.
    # @param webhook_id The webhook Identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2004, Fixnum, Hash)>] InlineResponse2004 data, response status code and response headers
    def get_webhook_details_with_http_info(webhook_id, opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: ManageWebhooksApi.get_webhook_details ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # verify the required parameter 'webhook_id' is set
      if @api_client.config.client_side_validation && webhook_id.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_id' when calling ManageWebhooksApi.get_webhook_details"
      end
      # resource path
      local_var_path = 'notification-subscriptions/v1/webhooks/{webhookId}'.sub('{' + 'webhookId' + '}', webhook_id.to_s)

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
        :return_type => 'InlineResponse2004')
      if @api_client.config.debugging
        begin
        raise
            @api_client.config.logger.debug "API called: ManageWebhooksApi#get_webhook_details\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
    # Replay Previous Webhooks
    # Initiate a webhook replay request to replay transactions that happened in the past.  Cannot execute more than 1 replay request at a time. While one request is processing, you will not be allowed to execute another replay.  The difference between Start and End time cannot exceed a 24 hour window, and 1 month is the farthest date back that is eligible for replay. 
    # @param webhook_id The webhook uuid identifier.
    # @param [Hash] opts the optional parameters
    # @option opts [ReplayWebhooks] :replay_webhooks The request query
    # @return [nil]
    def replay_previous_webhook(webhook_id, opts = {})
      data, status_code, headers = replay_previous_webhook_with_http_info(webhook_id, opts)
      return data, status_code, headers
    end

    # Replay Previous Webhooks
    # Initiate a webhook replay request to replay transactions that happened in the past.  Cannot execute more than 1 replay request at a time. While one request is processing, you will not be allowed to execute another replay.  The difference between Start and End time cannot exceed a 24 hour window, and 1 month is the farthest date back that is eligible for replay. 
    # @param webhook_id The webhook uuid identifier.
    # @param [Hash] opts the optional parameters
    # @option opts [ReplayWebhooks] :replay_webhooks The request query
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def replay_previous_webhook_with_http_info(webhook_id, opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: ManageWebhooksApi.replay_previous_webhook ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # verify the required parameter 'webhook_id' is set
      if @api_client.config.client_side_validation && webhook_id.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_id' when calling ManageWebhooksApi.replay_previous_webhook"
      end
      # resource path
      local_var_path = 'nrtf/v1/webhooks/{webhookId}/replays'.sub('{' + 'webhookId' + '}', webhook_id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'replay_webhooks'])
      sdk_tracker = SdkTracker.new
      post_body = sdk_tracker.insert_developer_id_tracker(post_body, 'ReplayWebhooks', @api_client.config.host)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        begin
        raise
            @api_client.config.logger.debug "API called: ManageWebhooksApi#replay_previous_webhook\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
    # Message Level Encryption
    # Store and manage certificates that will be used to preform Message Level Encryption (MLE). Each new webhook will need its own unique asymmetric certificate. You can either use a digital certificate issued/signed by a CA or self-sign your own using the documentation available on the Developer Guide. 
    # @param v_c_sender_organization_id Sender organization id
    # @param v_c_permissions Encoded user permissions returned by the CGK, for the entity user who initiated the boarding
    # @param save_asym_egress_key Provide egress Asymmetric key information to save (create or store)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :v_c_correlation_id A globally unique id associated with your request
    # @return [InlineResponse2014]
    def save_asym_egress_key(v_c_sender_organization_id, v_c_permissions, save_asym_egress_key, opts = {})
      data, status_code, headers = save_asym_egress_key_with_http_info(v_c_sender_organization_id, v_c_permissions, save_asym_egress_key, opts)
      return data, status_code, headers
    end

    # Message Level Encryption
    # Store and manage certificates that will be used to preform Message Level Encryption (MLE). Each new webhook will need its own unique asymmetric certificate. You can either use a digital certificate issued/signed by a CA or self-sign your own using the documentation available on the Developer Guide. 
    # @param v_c_sender_organization_id Sender organization id
    # @param v_c_permissions Encoded user permissions returned by the CGK, for the entity user who initiated the boarding
    # @param save_asym_egress_key Provide egress Asymmetric key information to save (create or store)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :v_c_correlation_id A globally unique id associated with your request
    # @return [Array<(InlineResponse2014, Fixnum, Hash)>] InlineResponse2014 data, response status code and response headers
    def save_asym_egress_key_with_http_info(v_c_sender_organization_id, v_c_permissions, save_asym_egress_key, opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: ManageWebhooksApi.save_asym_egress_key ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # verify the required parameter 'v_c_sender_organization_id' is set
      if @api_client.config.client_side_validation && v_c_sender_organization_id.nil?
        fail ArgumentError, "Missing the required parameter 'v_c_sender_organization_id' when calling ManageWebhooksApi.save_asym_egress_key"
      end
      if @api_client.config.client_side_validation && v_c_sender_organization_id.to_s.length > 100
        fail ArgumentError, 'invalid value for "v_c_sender_organization_id" when calling ManageWebhooksApi.save_asym_egress_key, the character length must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && v_c_sender_organization_id.to_s.length < 2
        fail ArgumentError, 'invalid value for "v_c_sender_organization_id" when calling ManageWebhooksApi.save_asym_egress_key, the character length must be great than or equal to 2.'
      end

      #if @api_client.config.client_side_validation && v_c_sender_organization_id !~ Regexp.new(/^[A-Za-z0-9\\-_]+$/)
        #fail ArgumentError, "invalid value for 'v_c_sender_organization_id' when calling ManageWebhooksApi.save_asym_egress_key, must conform to the pattern /^[A-Za-z0-9\\-_]+$/."
      #end

      # verify the required parameter 'v_c_permissions' is set
      if @api_client.config.client_side_validation && v_c_permissions.nil?
        fail ArgumentError, "Missing the required parameter 'v_c_permissions' when calling ManageWebhooksApi.save_asym_egress_key"
      end
      # verify the required parameter 'save_asym_egress_key' is set
      if @api_client.config.client_side_validation && save_asym_egress_key.nil?
        fail ArgumentError, "Missing the required parameter 'save_asym_egress_key' when calling ManageWebhooksApi.save_asym_egress_key"
      end
      if @api_client.config.client_side_validation && !opts[:'v_c_correlation_id'].nil? && opts[:'v_c_correlation_id'].to_s.length > 100
        fail ArgumentError, 'invalid value for "opts[:"v_c_correlation_id"]" when calling ManageWebhooksApi.save_asym_egress_key, the character length must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'v_c_correlation_id'].nil? && opts[:'v_c_correlation_id'].to_s.length < 2
        fail ArgumentError, 'invalid value for "opts[:"v_c_correlation_id"]" when calling ManageWebhooksApi.save_asym_egress_key, the character length must be great than or equal to 2.'
      end

      #if @api_client.config.client_side_validation && !opts[:'v_c_correlation_id'].nil? && opts[:'v_c_correlation_id'] !~ Regexp.new(/^[A-Za-z0-9\\.\\-_:]+$/)
        #fail ArgumentError, "invalid value for 'opts[:\"v_c_correlation_id\"]' when calling ManageWebhooksApi.save_asym_egress_key, must conform to the pattern /^[A-Za-z0-9\\.\\-_:]+$/."
      #end

      # resource path
      local_var_path = 'kms/egress/v2/keys-asym'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/hal+json;charset=utf-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=utf-8'])
      header_params[:'v-c-sender-organization-id'] = v_c_sender_organization_id
      header_params[:'v-c-permissions'] = v_c_permissions
      header_params[:'v-c-correlation-id'] = opts[:'v_c_correlation_id'] if !opts[:'v_c_correlation_id'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(save_asym_egress_key)
      sdk_tracker = SdkTracker.new
      post_body = sdk_tracker.insert_developer_id_tracker(post_body, 'SaveAsymEgressKey', @api_client.config.host)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2014')
      if @api_client.config.debugging
        begin
        raise
            @api_client.config.logger.debug "API called: ManageWebhooksApi#save_asym_egress_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
    # Update a Webhook Subscription
    # Update the webhook subscription using PATCH.
    # @param webhook_id The Webhook Identifier.
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateWebhook] :update_webhook The webhook payload or changes to apply.
    # @return [nil]
    def update_webhook_subscription(webhook_id, opts = {})
      data, status_code, headers = update_webhook_subscription_with_http_info(webhook_id, opts)
      return data, status_code, headers
    end

    # Update a Webhook Subscription
    # Update the webhook subscription using PATCH.
    # @param webhook_id The Webhook Identifier.
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateWebhook] :update_webhook The webhook payload or changes to apply.
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def update_webhook_subscription_with_http_info(webhook_id, opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: ManageWebhooksApi.update_webhook_subscription ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # verify the required parameter 'webhook_id' is set
      if @api_client.config.client_side_validation && webhook_id.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_id' when calling ManageWebhooksApi.update_webhook_subscription"
      end
      # resource path
      local_var_path = 'notification-subscriptions/v1/webhooks/{webhookId}'.sub('{' + 'webhookId' + '}', webhook_id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'update_webhook'])
      sdk_tracker = SdkTracker.new
      post_body = sdk_tracker.insert_developer_id_tracker(post_body, 'UpdateWebhook', @api_client.config.host)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        begin
        raise
            @api_client.config.logger.debug "API called: ManageWebhooksApi#update_webhook_subscription\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
  end
end
