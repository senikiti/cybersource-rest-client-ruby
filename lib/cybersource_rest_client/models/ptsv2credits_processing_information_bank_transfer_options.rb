=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class Ptsv2creditsProcessingInformationBankTransferOptions
    # Payment related information.  This information is included on the customer's statement. 
    attr_accessor :customer_memo

    # Specifies the authorization method for the transaction.  #### TeleCheck Accepts only the following values: - `ARC`: account receivable conversion - `CCD`: corporate cash disbursement - `POP`: point of purchase conversion - `PPD`: prearranged payment and deposit entry - `TEL`: telephone-initiated entry - `WEB`: internet-initiated entry  For details, see `ecp_sec_code` field description in the [Electronic Check Services Using the SCMP API Guide.](https://apps.cybersource.com/library/documentation/dev_guides/EChecks_SCMP_API/html/) 
    attr_accessor :sec_code

    # City in which the terminal is located. If more than four alphanumeric characters are submitted, the transaction will be declined.  You cannot include any special characters. 
    attr_accessor :terminal_city

    # State in which the terminal is located. If more than two alphanumeric characters are submitted, the transaction will be declined.  You cannot include any special characters. 
    attr_accessor :terminal_state

    # Effective date for the transaction. The effective date must be within 45 days of the current day. If you do not include this value, CyberSource sets the effective date to the next business day.  Format: `MMDDYYYY`  Supported only for the CyberSource ACH Service. 
    attr_accessor :effective_date

    # Identifier for a partial payment or partial credit.  The value for each debit request or credit request must be unique within the scope of the order. For details, see `partial_payment_id` field description in the [Electronic Check Services Using the SCMP API Guide.](https://apps.cybersource.com/library/documentation/dev_guides/EChecks_SCMP_API/html/) 
    attr_accessor :partial_payment_id

    # Method used for settlement.  Possible values: - `A`: Automated Clearing House (default for credits and for transactions using Canadian dollars) - `F`: Facsimile draft (U.S. dollars only) - `B`: Best possible (U.S. dollars only) (default if the field has not already been configured for your merchant ID)  For details, see `ecp_settlement_method` field description for credit cars and `ecp_debit_settlement_method` for debit cards in the [Electronic Check Services Using the SCMP API Guide.](https://apps.cybersource.com/library/documentation/dev_guides/EChecks_SCMP_API/html/) 
    attr_accessor :settlement_method

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'customer_memo' => :'customerMemo',
        :'sec_code' => :'secCode',
        :'terminal_city' => :'terminalCity',
        :'terminal_state' => :'terminalState',
        :'effective_date' => :'effectiveDate',
        :'partial_payment_id' => :'partialPaymentId',
        :'settlement_method' => :'settlementMethod'
      }
    end

    # Attribute mapping from JSON key to ruby-style variable name.
    def self.json_map
      {
        :'customer_memo' => :'customer_memo',
        :'sec_code' => :'sec_code',
        :'terminal_city' => :'terminal_city',
        :'terminal_state' => :'terminal_state',
        :'effective_date' => :'effective_date',
        :'partial_payment_id' => :'partial_payment_id',
        :'settlement_method' => :'settlement_method'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'customer_memo' => :'String',
        :'sec_code' => :'String',
        :'terminal_city' => :'String',
        :'terminal_state' => :'String',
        :'effective_date' => :'String',
        :'partial_payment_id' => :'String',
        :'settlement_method' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'customerMemo')
        self.customer_memo = attributes[:'customerMemo']
      end

      if attributes.has_key?(:'secCode')
        self.sec_code = attributes[:'secCode']
      end

      if attributes.has_key?(:'terminalCity')
        self.terminal_city = attributes[:'terminalCity']
      end

      if attributes.has_key?(:'terminalState')
        self.terminal_state = attributes[:'terminalState']
      end

      if attributes.has_key?(:'effectiveDate')
        self.effective_date = attributes[:'effectiveDate']
      end

      if attributes.has_key?(:'partialPaymentId')
        self.partial_payment_id = attributes[:'partialPaymentId']
      end

      if attributes.has_key?(:'settlementMethod')
        self.settlement_method = attributes[:'settlementMethod']
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
    # @param [Object] customer_memo Value to be assigned
    def customer_memo=(customer_memo)
      @customer_memo = customer_memo
    end

    # Custom attribute writer method with validation
    # @param [Object] sec_code Value to be assigned
    def sec_code=(sec_code)
      @sec_code = sec_code
    end

    # Custom attribute writer method with validation
    # @param [Object] terminal_city Value to be assigned
    def terminal_city=(terminal_city)
      @terminal_city = terminal_city
    end

    # Custom attribute writer method with validation
    # @param [Object] terminal_state Value to be assigned
    def terminal_state=(terminal_state)
      @terminal_state = terminal_state
    end

    # Custom attribute writer method with validation
    # @param [Object] effective_date Value to be assigned
    def effective_date=(effective_date)
      @effective_date = effective_date
    end

    # Custom attribute writer method with validation
    # @param [Object] partial_payment_id Value to be assigned
    def partial_payment_id=(partial_payment_id)
      @partial_payment_id = partial_payment_id
    end

    # Custom attribute writer method with validation
    # @param [Object] settlement_method Value to be assigned
    def settlement_method=(settlement_method)
      @settlement_method = settlement_method
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          customer_memo == o.customer_memo &&
          sec_code == o.sec_code &&
          terminal_city == o.terminal_city &&
          terminal_state == o.terminal_state &&
          effective_date == o.effective_date &&
          partial_payment_id == o.partial_payment_id &&
          settlement_method == o.settlement_method
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [customer_memo, sec_code, terminal_city, terminal_state, effective_date, partial_payment_id, settlement_method].hash
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
