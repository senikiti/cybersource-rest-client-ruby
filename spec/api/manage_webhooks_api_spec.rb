=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'

# Unit tests for CyberSource::ManageWebhooksApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ManageWebhooksApi' do
  before do
    # run before each test
    @instance = CyberSource::ManageWebhooksApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ManageWebhooksApi' do
    it 'should create an instance of ManageWebhooksApi' do
      expect(@instance).to be_instance_of(CyberSource::ManageWebhooksApi)
    end
  end

  # unit tests for delete_webhook_subscription
  # Delete a Webhook Subscription
  # Delete the webhook. Please note that deleting a particular webhook does not delete the history of the webhook notifications.
  # @param webhook_id The webhook identifier.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_webhook_subscription test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_all_webhooks
  # Get Details On All Created Webhooks
  # Retrieve a list of all previously created webhooks.
  # @param organization_id The Organization Identifier.
  # @param product_id The Product Identifier.
  # @param event_type The Event Type.
  # @param [Hash] opts the optional parameters
  # @return [Array<InlineResponse2004>]
  describe 'get_all_webhooks test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_webhook_details
  # Get Details On a Single Webhook
  # Retrieve the details of a specific webhook by supplying the webhook ID in the path.
  # @param webhook_id The webhook Identifier
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse2004]
  describe 'get_webhook_details test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for replay_previous_webhook
  # Replay Previous Webhooks
  # Initiate a webhook replay request to replay transactions that happened in the past.  Cannot execute more than 1 replay request at a time. While one request is processing, you will not be allowed to execute another replay.  The difference between Start and End time cannot exceed a 24 hour window, and 1 month is the farthest date back that is eligible for replay. 
  # @param webhook_id The webhook uuid identifier.
  # @param [Hash] opts the optional parameters
  # @option opts [ReplayWebhooks] :replay_webhooks The request query
  # @return [nil]
  describe 'replay_previous_webhook test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for save_asym_egress_key
  # Message Level Encryption
  # Store and manage certificates that will be used to preform Message Level Encryption (MLE). Each new webhook will need its own unique asymmetric certificate. You can either use a digital certificate issued/signed by a CA or self-sign your own using the documentation available on the Developer Guide. 
  # @param v_c_sender_organization_id Sender organization id
  # @param v_c_permissions Encoded user permissions returned by the CGK, for the entity user who initiated the boarding
  # @param save_asym_egress_key Provide egress Asymmetric key information to save (create or store)
  # @param [Hash] opts the optional parameters
  # @option opts [String] :v_c_correlation_id A globally unique id associated with your request
  # @return [InlineResponse2014]
  describe 'save_asym_egress_key test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_webhook_subscription
  # Update a Webhook Subscription
  # Update the webhook subscription using PATCH.
  # @param webhook_id The Webhook Identifier.
  # @param [Hash] opts the optional parameters
  # @option opts [UpdateWebhook] :update_webhook The webhook payload or changes to apply.
  # @return [nil]
  describe 'update_webhook_subscription test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
