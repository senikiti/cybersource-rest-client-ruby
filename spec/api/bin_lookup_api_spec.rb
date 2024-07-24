=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.38
=end

require 'spec_helper'
require 'json'

# Unit tests for CyberSource::BinLookupApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'BinLookupApi' do
  before do
    # run before each test
    @instance = CyberSource::BinLookupApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BinLookupApi' do
    it 'should create an instance of BinLookupApi' do
      expect(@instance).to be_instance_of(CyberSource::BinLookupApi)
    end
  end

  # unit tests for get_account_info
  # BIN Lookup API
  # The BIN Lookup Service is a versatile business tool that provides card network agnostic solution designed to ensure frictionless transaction experience by utilizing up-to-date Bank Identification Number (BIN) attributes sourced from multiple global and regional data sources. This service helps to improve authorization rates by helping to route transactions to the best-suited card network, minimizes fraud through card detail verification and aids in regulatory compliance by identifying card properties. The service is flexible and provides businesses  with a flexible choice of inputs such as primary account number (PAN), network token from major networks which includes device PAN (DPAN), and all types of tokens generated via CyberSource Token Management Service (TMS). Currently, the range of available credentials is contingent on the networks enabled for the business entity. Therefore, the network information specified in this documentation is illustrative and subject to personalized offerings for each reseller or merchant. 
  # @param create_bin_lookup_request 
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse2011]
  describe 'get_account_info test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
