=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.38
=end

require 'spec_helper'
require 'json'

# Unit tests for CyberSource::MerchantBoardingApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'MerchantBoardingApi' do
  before do
    # run before each test
    @instance = CyberSource::MerchantBoardingApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MerchantBoardingApi' do
    it 'should create an instance of MerchantBoardingApi' do
      expect(@instance).to be_instance_of(CyberSource::MerchantBoardingApi)
    end
  end

  # unit tests for get_registration
  # Gets all the information on a boarding registration
  # This end point will get all information of a boarding registration 
  # @param registration_id Identifies the boarding registration to be updated
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse2002]
  describe 'get_registration test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_registration
  # Create a boarding registration
  # Create a registration to board merchant  If you have  Card Processing product enabled in your boarding request, select payment processor from Configuration -&gt; Sample Request. You may unselect attributes from the Request Builder tree which you do not need in the request. For VPC, CUP and EFTPOS processors, replace the processor name from VPC or CUP or EFTPOS to the actual processor name in the sample request. e.g. replace VPC with &amp;lt;your vpc processor&amp;gt; 
  # @param post_registration_body Boarding registration data
  # @param [Hash] opts the optional parameters
  # @option opts [String] :v_c_idempotency_id defines idempotency of the request
  # @return [InlineResponse2011]
  describe 'post_registration test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
