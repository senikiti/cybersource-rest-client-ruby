=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'uri'

module CyberSource
  class VerificationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default, config)
      @api_client = api_client
      @api_client.set_configuration(config)
    end
    # Validate export compliance
    # This call checks customer data against specified watch lists to ensure export compliance. 
    # @param validate_export_compliance_request 
    # @param [Hash] opts the optional parameters
    # @return [RiskV1ExportComplianceInquiriesPost201Response]
    def validate_export_compliance(validate_export_compliance_request, opts = {})
      data, status_code, headers = validate_export_compliance_with_http_info(validate_export_compliance_request, opts)
      return data, status_code, headers
    end

    # Validate export compliance
    # This call checks customer data against specified watch lists to ensure export compliance. 
    # @param validate_export_compliance_request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(RiskV1ExportComplianceInquiriesPost201Response, Fixnum, Hash)>] RiskV1ExportComplianceInquiriesPost201Response data, response status code and response headers
    def validate_export_compliance_with_http_info(validate_export_compliance_request, opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: VerificationApi.validate_export_compliance ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # verify the required parameter 'validate_export_compliance_request' is set
      if @api_client.config.client_side_validation && validate_export_compliance_request.nil?
        fail ArgumentError, "Missing the required parameter 'validate_export_compliance_request' when calling VerificationApi.validate_export_compliance"
      end
      # resource path
      local_var_path = 'risk/v1/export-compliance-inquiries'

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
      post_body = @api_client.object_to_http_body(validate_export_compliance_request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'RiskV1ExportComplianceInquiriesPost201Response')
      if @api_client.config.debugging
        begin
        raise
            @api_client.config.logger.debug "API called: VerificationApi#validate_export_compliance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
    # Verify customer address
    # This call verifies that the customer address submitted is valid.
    # @param verify_customer_address_request 
    # @param [Hash] opts the optional parameters
    # @return [RiskV1AddressVerificationsPost201Response]
    def verify_customer_address(verify_customer_address_request, opts = {})
      data, status_code, headers = verify_customer_address_with_http_info(verify_customer_address_request, opts)
      return data, status_code, headers
    end

    # Verify customer address
    # This call verifies that the customer address submitted is valid.
    # @param verify_customer_address_request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(RiskV1AddressVerificationsPost201Response, Fixnum, Hash)>] RiskV1AddressVerificationsPost201Response data, response status code and response headers
    def verify_customer_address_with_http_info(verify_customer_address_request, opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: VerificationApi.verify_customer_address ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # verify the required parameter 'verify_customer_address_request' is set
      if @api_client.config.client_side_validation && verify_customer_address_request.nil?
        fail ArgumentError, "Missing the required parameter 'verify_customer_address_request' when calling VerificationApi.verify_customer_address"
      end
      # resource path
      local_var_path = 'risk/v1/address-verifications'

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
      post_body = @api_client.object_to_http_body(verify_customer_address_request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'RiskV1AddressVerificationsPost201Response')
      if @api_client.config.debugging
        begin
        raise
            @api_client.config.logger.debug "API called: VerificationApi#verify_customer_address\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
  end
end
