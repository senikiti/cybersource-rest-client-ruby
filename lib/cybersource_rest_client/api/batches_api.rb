=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.38
=end

require 'uri'

module CyberSource
  class BatchesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default, config)
      @api_client = api_client
      @api_client.set_configuration(config)
    end
    # Retrieve a Batch Report
    # **Get Batch Report**<br>This resource accepts a batch id and returns: - The batch status. - The total number of accepted, rejected, updated records. - The total number of card association responses. - The billable quantities of:   - New Account Numbers (NAN)   - New Expiry Dates (NED)   - Account Closures (ACL)   - Contact Card Holders (CCH) - Source record information including token ids, masked card number, expiration dates & card type. - Response record information including response code, reason, token ids, masked card number, expiration dates & card type. 
    #
    # @param batch_id Unique identification number assigned to the submitted request.
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2008]
    #
    def get_batch_report(batch_id, opts = {})
      data, status_code, headers = get_batch_report_with_http_info(batch_id, opts)
      return data, status_code, headers
    end

    # Retrieve a Batch Report
    # **Get Batch Report**&lt;br&gt;This resource accepts a batch id and returns: - The batch status. - The total number of accepted, rejected, updated records. - The total number of card association responses. - The billable quantities of:   - New Account Numbers (NAN)   - New Expiry Dates (NED)   - Account Closures (ACL)   - Contact Card Holders (CCH) - Source record information including token ids, masked card number, expiration dates &amp; card type. - Response record information including response code, reason, token ids, masked card number, expiration dates &amp; card type. 
    # @param batch_id Unique identification number assigned to the submitted request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2008, Fixnum, Hash)>] InlineResponse2008 data, response status code and response headers
    def get_batch_report_with_http_info(batch_id, opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: BatchesApi.get_batch_report ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # verify the required parameter 'batch_id' is set
      if @api_client.config.client_side_validation && batch_id.nil?
        fail ArgumentError, "Missing the required parameter 'batch_id' when calling BatchesApi.get_batch_report"
      end
      #if @api_client.config.client_side_validation && batch_id !~ Regexp.new(/^[0-9]*$/)
        #fail ArgumentError, "invalid value for 'batch_id' when calling BatchesApi.get_batch_report, must conform to the pattern /^[0-9]*$/."
      #end

      # resource path
      local_var_path = 'accountupdater/v1/batches/{batchId}/report'.sub('{' + 'batchId' + '}', batch_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json;charset=utf-8'])
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
        :return_type => 'InlineResponse2008')
      if @api_client.config.debugging
        begin
        raise
            @api_client.config.logger.debug "API called: BatchesApi#get_batch_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
    # Retrieve a Batch Status
    # **Get Batch Status**<br>This resource accepts a batch id and returns: - The batch status. - The total number of accepted, rejected, updated records. - The total number of card association responses. - The billable quantities of:   - New Account Numbers (NAN)   - New Expiry Dates (NED)   - Account Closures (ACL)   - Contact Card Holders (CCH) 
    #
    # @param batch_id Unique identification number assigned to the submitted request.
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2007]
    #
    def get_batch_status(batch_id, opts = {})
      data, status_code, headers = get_batch_status_with_http_info(batch_id, opts)
      return data, status_code, headers
    end

    # Retrieve a Batch Status
    # **Get Batch Status**&lt;br&gt;This resource accepts a batch id and returns: - The batch status. - The total number of accepted, rejected, updated records. - The total number of card association responses. - The billable quantities of:   - New Account Numbers (NAN)   - New Expiry Dates (NED)   - Account Closures (ACL)   - Contact Card Holders (CCH) 
    # @param batch_id Unique identification number assigned to the submitted request.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2007, Fixnum, Hash)>] InlineResponse2007 data, response status code and response headers
    def get_batch_status_with_http_info(batch_id, opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: BatchesApi.get_batch_status ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # verify the required parameter 'batch_id' is set
      if @api_client.config.client_side_validation && batch_id.nil?
        fail ArgumentError, "Missing the required parameter 'batch_id' when calling BatchesApi.get_batch_status"
      end
      #if @api_client.config.client_side_validation && batch_id !~ Regexp.new(/^[0-9]*$/)
        #fail ArgumentError, "invalid value for 'batch_id' when calling BatchesApi.get_batch_status, must conform to the pattern /^[0-9]*$/."
      #end

      # resource path
      local_var_path = 'accountupdater/v1/batches/{batchId}/status'.sub('{' + 'batchId' + '}', batch_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json;charset=utf-8'])
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
        :return_type => 'InlineResponse2007')
      if @api_client.config.debugging
        begin
        raise
            @api_client.config.logger.debug "API called: BatchesApi#get_batch_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
    # List Batches
    # **List Batches**<br>This resource accepts a optional date range, record offset and limit, returning a paginated response of batches containing: - The batch id. - The batch status. - The batch created / modified dates. - The total number of accepted, rejected, updated records. - The total number of card association responses. 
    #
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset Starting record in zero-based dataset that should be returned as the first object in the array. (default to 0)
    # @option opts [Integer] :limit The maximum number that can be returned in the array starting from the offset record in zero-based dataset. (default to 20)
    # @option opts [String] :from_date ISO-8601 format: yyyyMMddTHHmmssZ
    # @option opts [String] :to_date ISO-8601 format: yyyyMMddTHHmmssZ
    # @return [InlineResponse2006]
    #
    def get_batches_list(opts = {})
      data, status_code, headers = get_batches_list_with_http_info(opts)
      return data, status_code, headers
    end

    # List Batches
    # **List Batches**&lt;br&gt;This resource accepts a optional date range, record offset and limit, returning a paginated response of batches containing: - The batch id. - The batch status. - The batch created / modified dates. - The total number of accepted, rejected, updated records. - The total number of card association responses. 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset Starting record in zero-based dataset that should be returned as the first object in the array.
    # @option opts [Integer] :limit The maximum number that can be returned in the array starting from the offset record in zero-based dataset.
    # @option opts [String] :from_date ISO-8601 format: yyyyMMddTHHmmssZ
    # @option opts [String] :to_date ISO-8601 format: yyyyMMddTHHmmssZ
    # @return [Array<(InlineResponse2006, Fixnum, Hash)>] InlineResponse2006 data, response status code and response headers
    def get_batches_list_with_http_info(opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: BatchesApi.get_batches_list ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # resource path
      local_var_path = 'accountupdater/v1/batches'

      # query parameters
      query_params = {}
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'fromDate'] = opts[:'from_date'] if !opts[:'from_date'].nil?
      query_params[:'toDate'] = opts[:'to_date'] if !opts[:'to_date'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json;charset=utf-8'])
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
        :return_type => 'InlineResponse2006')
      if @api_client.config.debugging
        begin
        raise
            @api_client.config.logger.debug "API called: BatchesApi#get_batches_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
    # Create a Batch
    # **Create a Batch**<br>This resource accepts TMS tokens ids of a Customer, Payment Instrument or Instrument Identifier. <br> The card numbers for the supplied tokens ids are then sent to the relevant card associations to check for updates.<br>The following type of batches can be submitted: -  **oneOff** batch containing tokens id for Visa or MasterCard card numbers. - **amexRegistration** batch containing tokens id for Amex card numbers.  A batch id will be returned on a successful response which can be used to get the batch status and the batch report. 
    #
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse202]
    #
    def post_batch(body, opts = {})
      data, status_code, headers = post_batch_with_http_info(body, opts)
      return data, status_code, headers
    end

    # Create a Batch
    # **Create a Batch**&lt;br&gt;This resource accepts TMS tokens ids of a Customer, Payment Instrument or Instrument Identifier. &lt;br&gt; The card numbers for the supplied tokens ids are then sent to the relevant card associations to check for updates.&lt;br&gt;The following type of batches can be submitted: -  **oneOff** batch containing tokens id for Visa or MasterCard card numbers. - **amexRegistration** batch containing tokens id for Amex card numbers.  A batch id will be returned on a successful response which can be used to get the batch status and the batch report. 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse202, Fixnum, Hash)>] InlineResponse202 data, response status code and response headers
    def post_batch_with_http_info(body, opts = {})

      if @api_client.config.debugging
          begin
            raise
                @api_client.config.logger.debug 'Calling API: BatchesApi.post_batch ...'
            rescue
                puts 'Cannot write to log'
            end
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling BatchesApi.post_batch"
      end
      # resource path
      local_var_path = 'accountupdater/v1/batches'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json;charset=utf-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=utf-8'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      sdk_tracker = SdkTracker.new
      post_body = sdk_tracker.insert_developer_id_tracker(post_body, 'Body', @api_client.config.host)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse202')
      if @api_client.config.debugging
        begin
        raise
            @api_client.config.logger.debug "API called: BatchesApi#post_batch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        rescue
            puts 'Cannot write to log'
        end
      end
      return data, status_code, headers
    end
  end
end
