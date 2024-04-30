=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.38
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for CyberSource::VTConfigCardNotPresentGlobalPaymentInformationBasicInformation
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'VTConfigCardNotPresentGlobalPaymentInformationBasicInformation' do
  before do
    # run before each test
    @instance = CyberSource::VTConfigCardNotPresentGlobalPaymentInformationBasicInformation.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of VTConfigCardNotPresentGlobalPaymentInformationBasicInformation' do
    it 'should create an instance of VTConfigCardNotPresentGlobalPaymentInformationBasicInformation' do
      expect(@instance).to be_instance_of(CyberSource::VTConfigCardNotPresentGlobalPaymentInformationBasicInformation)
    end
  end
  describe 'test attribute "default_standard_entry_class_code"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "default_country_code"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "default_currency_code"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "default_transaction_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["AUTHORIZATION", "SALE"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.default_transaction_type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "default_payment_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["CREDIT_CARD", "ECHECK"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.default_payment_type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "default_transaction_source"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "display_retail"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "display_moto"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "display_internet"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
