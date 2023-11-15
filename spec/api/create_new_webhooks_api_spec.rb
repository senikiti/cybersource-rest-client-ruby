=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'

# Unit tests for CyberSource::CreateNewWebhooksApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CreateNewWebhooksApi' do
  before do
    # run before each test
    @instance = CyberSource::CreateNewWebhooksApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CreateNewWebhooksApi' do
    it 'should create an instance of CreateNewWebhooksApi' do
      expect(@instance).to be_instance_of(CyberSource::CreateNewWebhooksApi)
    end
  end

  # unit tests for create_webhook
  # Create a Webhook
  # Create a new webhook subscription. Before creating a webhook, ensure that a security key has been created at the top of this developer center section. You will not need to pass us back the key during the creation of the webhook, but you will receive an error if you did not already create a key or store one on file. 
  # @param [Hash] opts the optional parameters
  # @option opts [CreateWebhook] :create_webhook The webhook payload
  # @return [InlineResponse2013]
  describe 'create_webhook test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for find_product_to_subscribe
  # Find Products You Can Subscribe To
  # Retrieve a list of products and event types that your account is eligible for. These products and events are the ones that you may subscribe to in the next step of creating webhooks.
  # @param organization_id The Organization Identifier.
  # @param [Hash] opts the optional parameters
  # @return [Array<InlineResponse2003>]
  describe 'find_product_to_subscribe test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for save_sym_egress_key
  # Create Webhook Security Keys
  # Create security keys that CyberSource will use internally to connect to your servers and validate messages using a digital signature.  Select the CREATE example for CyberSource to generate the key on our server and maintain it for you as well. Remeber to save the key in the API response, so that you can use it to validate messages later. 
  # @param v_c_sender_organization_id Sender organization id
  # @param v_c_permissions Encoded user permissions returned by the CGK, for the entity user who initiated the boarding
  # @param [Hash] opts the optional parameters
  # @option opts [String] :v_c_correlation_id A globally unique id associated with your request
  # @option opts [SaveSymEgressKey] :save_sym_egress_key Provide egress Symmetric key information to save (create or store or refresh)
  # @return [InlineResponse2012]
  describe 'save_sym_egress_key test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
