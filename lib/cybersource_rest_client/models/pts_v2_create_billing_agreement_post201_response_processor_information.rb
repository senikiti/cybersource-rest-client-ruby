=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.38
=end

require 'date'

module CyberSource
  class PtsV2CreateBillingAgreementPost201ResponseProcessorInformation
    # Authorization code. Returned only when the processor returns this value.  The length of this value depends on your processor.  Returned by authorization service.  #### PIN debit Authorization code that is returned by the processor.  Returned by PIN debit credit.  #### Elavon Encrypted Account Number Program The returned value is OFFLINE.  #### TSYS Acquiring Solutions The returned value for a successful zero amount authorization is 000000. 
    attr_accessor :approval_code

    # For most processors, this is the error message sent directly from the bank. Returned only when the processor returns this value.  **Important** Do not use this field to evaluate the result of the authorization. #### SEPA/BACS Response code from the processor. Possible values: 00000–99999. See Appendix C, \"Reason Codes and Processor Response Codes,\" on page 42.  #### PIN debit Response value that is returned by the processor or bank. **Important** Do not use this field to evaluate the results of the transaction request.  Returned by PIN debit credit, PIN debit purchase, and PIN debit reversal.  #### AIBMS If this value is `08`, you can accept the transaction if the customer provides you with identification.  #### Atos This value is the response code sent from Atos and it might also include the response code from the bank. Format: `aa,bb` with the two values separated by a comma and where: - `aa` is the two-digit error message from Atos. - `bb` is the optional two-digit error message from the bank.  #### Comercio Latino This value is the status code and the error or response code received from the processor separated by a colon. Format: [status code]:E[error code] or [status code]:R[response code] Example `2:R06`  #### JCN Gateway Processor-defined detail error code. The associated response category code is in the `processorInformation.responseCategoryCode` field. String (3) 
    attr_accessor :response_code

    # Transaction ID assigned by the processor. 
    attr_accessor :transaction_id

    # Response code indicating that creating the agreement failed 
    attr_accessor :response_details

    # Numeric value corresponding to the result of the request. 
    attr_accessor :reason_code

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'approval_code' => :'approvalCode',
        :'response_code' => :'responseCode',
        :'transaction_id' => :'transactionId',
        :'response_details' => :'responseDetails',
        :'reason_code' => :'reasonCode'
      }
    end

    # Attribute mapping from JSON key to ruby-style variable name.
    def self.json_map
      {
        :'approval_code' => :'approval_code',
        :'response_code' => :'response_code',
        :'transaction_id' => :'transaction_id',
        :'response_details' => :'response_details',
        :'reason_code' => :'reason_code'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'approval_code' => :'String',
        :'response_code' => :'String',
        :'transaction_id' => :'String',
        :'response_details' => :'String',
        :'reason_code' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'approvalCode')
        self.approval_code = attributes[:'approvalCode']
      end

      if attributes.has_key?(:'responseCode')
        self.response_code = attributes[:'responseCode']
      end

      if attributes.has_key?(:'transactionId')
        self.transaction_id = attributes[:'transactionId']
      end

      if attributes.has_key?(:'responseDetails')
        self.response_details = attributes[:'responseDetails']
      end

      if attributes.has_key?(:'reasonCode')
        self.reason_code = attributes[:'reasonCode']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] approval_code Value to be assigned
    def approval_code=(approval_code)
      @approval_code = approval_code
    end

    # Custom attribute writer method with validation
    # @param [Object] response_code Value to be assigned
    def response_code=(response_code)
      @response_code = response_code
    end

    # Custom attribute writer method with validation
    # @param [Object] transaction_id Value to be assigned
    def transaction_id=(transaction_id)
      @transaction_id = transaction_id
    end

    # Custom attribute writer method with validation
    # @param [Object] response_details Value to be assigned
    def response_details=(response_details)
      @response_details = response_details
    end

    # Custom attribute writer method with validation
    # @param [Object] reason_code Value to be assigned
    def reason_code=(reason_code)
      @reason_code = reason_code
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          approval_code == o.approval_code &&
          response_code == o.response_code &&
          transaction_id == o.transaction_id &&
          response_details == o.response_details &&
          reason_code == o.reason_code
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [approval_code, response_code, transaction_id, response_details, reason_code].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{self.class.json_map[key]}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{self.class.json_map[key]}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = CyberSource.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
