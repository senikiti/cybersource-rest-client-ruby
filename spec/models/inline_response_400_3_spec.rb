=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for CyberSource::InlineResponse4003
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'InlineResponse4003' do
  before do
    # run before each test
    @instance = CyberSource::InlineResponse4003.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InlineResponse4003' do
    it 'should create an instance of InlineResponse4003' do
      expect(@instance).to be_instance_of(CyberSource::InlineResponse4003)
    end
  end
  describe 'test attribute "correlation_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "details"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "information_link"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "message"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "reason"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["INVALID_APIKEY", "INVALID_SHIPPING_INPUT_PARAMS", "CAPTURE_CONTEXT_INVALID", "CAPTURE_CONTEXT_EXPIRED", "SDK_XHR_ERROR", "UNIFIEDPAYMENTS_VALIDATION_PARAMS", "UNIFIEDPAYMENTS_VALIDATION_FIELDS", "UNIFIEDPAYMENT_PAYMENT_PARAMITERS", "CREATE_TOKEN_TIMEOUT", "CREATE_TOKEN_XHR_ERROR", "SHOW_LOAD_CONTAINER_SELECTOR", "SHOW_LOAD_INVALID_CONTAINER", "SHOW_TOKEN_TIMEOUT", "SHOW_TOKEN_XHR_ERROR", "SHOW_PAYMENT_TIMEOUT"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.reason = value }.not_to raise_error
      # end
    end
  end

end
