=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.38
=end

require 'spec_helper'
require 'json'

# Unit tests for CyberSource::BillingAgreementsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'BillingAgreementsApi' do
  before do
    # run before each test
    @instance = CyberSource::BillingAgreementsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BillingAgreementsApi' do
    it 'should create an instance of BillingAgreementsApi' do
      expect(@instance).to be_instance_of(CyberSource::BillingAgreementsApi)
    end
  end

  # unit tests for billing_agreements_de_registration
  # Modify a Billing Agreement
  # #### Standing Instruction: Standing Instruction with or without Token.  #### Revoke Mandate: When you revoke a mandate, any pending direct debits linked to that mandate are canceled. No notifications are sent. When you revoke a mandate with no pending direct debits, the Bacs scheme or customer&#39;s bank notify you of any subsequent direct debit events. When you revoke a mandate, you cannot send a direct debit request using the mandate ID. Customer payments cannot be made against a revoked mandate. You can revoke a mandate when the customer:   - Requests that you revoke the mandate.   - Closes their account with you. Possible revoke mandate status values -   - Revoked—the revoke mandate request was successfully processed.   - Failed—the revoke mandate request was not accepted.  #### Update Mandate: In most cases, the account details of an existing mandate cannot be updated in the Bacs schema, except by creating a new mandate. However, some very limited customer information, like name and address, can be updated to the mandate without needing to revoke it first  #### Mandate Status: After the customer signs the mandate, request that the mandate status service verify the mandate status. Possible mandate status values:   - Active—the mandate is successfully created. A direct debit can be sent for this mandate ID.   - Pending—a pending mandate means the mandate is not yet signed.   - Failed—the customer did not authenticate.   - Expired—the deadline to create the mandate passed.   - Revoked—the mandate is cancelled.  #### Paypal Billing Agreement:  A billing agreement is set up between PayPal and your customer. When you collect the details of a customer&#39;s billing agreement, you are able to bill that customer without requiring an authorization for each payment.  You can bill the customer at the same time you process their PayPal Express checkout order, which simplifies your business processes. 
  # @param modify_billing_agreement 
  # @param id ID for de-registration or cancellation of Billing Agreement
  # @param [Hash] opts the optional parameters
  # @return [PtsV2ModifyBillingAgreementPost201Response]
  describe 'billing_agreements_de_registration test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for billing_agreements_intimation
  # Standing Instruction intimation
  # Standing Instruction with or without Token.
  # @param intimate_billing_agreement 
  # @param id ID for intimation of Billing Agreement
  # @param [Hash] opts the optional parameters
  # @return [PtsV2CreditsPost201Response1]
  describe 'billing_agreements_intimation test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for billing_agreements_registration
  # Create a Billing Agreement
  # #### Standing Instruction: Standing Instruction with or without Token. Transaction amount in case First payment is coming along with registration. Only 2 decimal places allowed  #### Create Mandate: You can create a mandate through the direct debit mandate flow. Possible create mandate status values:   - Pending—the create mandate request was successfully processed.   - Failed—the create mandate request was not accepted.  #### Import Mandate: In the Bacs scheme, a mandate is created with a status of active. Direct debit collections can be made against it immediately. You can import a mandate to the CyberSource database when:   - You have existing customers with signed, active mandates   - You manage mandates outside of CyberSource.  When you import an existing mandate to the CyberSource database, provide a unique value for the mandate ID or the request results in an error. If an import mandate request is not accepted, the import mandate status value is failed. 
  # @param create_billing_agreement 
  # @param [Hash] opts the optional parameters
  # @return [PtsV2CreateBillingAgreementPost201Response]
  describe 'billing_agreements_registration test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
