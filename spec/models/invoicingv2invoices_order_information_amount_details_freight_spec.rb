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

# Unit tests for CyberSource::Invoicingv2invoicesOrderInformationAmountDetailsFreight
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'Invoicingv2invoicesOrderInformationAmountDetailsFreight' do
  before do
    # run before each test
    @instance = CyberSource::Invoicingv2invoicesOrderInformationAmountDetailsFreight.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Invoicingv2invoicesOrderInformationAmountDetailsFreight' do
    it 'should create an instance of Invoicingv2invoicesOrderInformationAmountDetailsFreight' do
      expect(@instance).to be_instance_of(CyberSource::Invoicingv2invoicesOrderInformationAmountDetailsFreight)
    end
  end
  describe 'test attribute "amount"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "taxable"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "tax_rate"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
