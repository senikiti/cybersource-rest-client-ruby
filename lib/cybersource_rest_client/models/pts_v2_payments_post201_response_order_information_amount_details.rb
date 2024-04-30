=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.38
=end

require 'date'

module CyberSource
  class PtsV2PaymentsPost201ResponseOrderInformationAmountDetails
    # Amount you requested for the payment or capture.  This value is returned for partial authorizations. This field is also returned on incremental authorizations will contain the aggregated amount from the original authorizations and all the incremental authorizations. 
    attr_accessor :total_amount

    # Amount that was authorized.  Returned by authorization service.  #### PIN debit Amount of the purchase.  Returned by PIN debit purchase.  #### FDMS South If you accept IDR or CLP currencies, see the entry for FDMS South in Merchant Descriptors Using the SCMP API. 
    attr_accessor :authorized_amount

    # Currency used for the order. Use the three-character [ISO Standard Currency Codes.](http://apps.cybersource.com/library/documentation/sbc/quickref/currencies.pdf)  #### Used by **Authorization** Required field.  **Authorization Reversal** For an authorization reversal (`reversalInformation`) or a capture (`processingOptions.capture` is set to `true`), you must use the same currency that you used in your payment authorization request.  #### PIN Debit Currency for the amount you requested for the PIN debit purchase. This value is returned for partial authorizations. The issuing bank can approve a partial amount if the balance on the debit card is less than the requested transaction amount. For the possible values, see the [ISO Standard Currency Codes](https://developer.cybersource.com/library/documentation/sbc/quickref/currencies.pdf). Returned by PIN debit purchase.  For PIN debit reversal requests, you must use the same currency that was used for the PIN debit purchase or PIN debit credit that you are reversing. For the possible values, see the [ISO Standard Currency Codes](https://developer.cybersource.com/library/documentation/sbc/quickref/currencies.pdf).  Required field for PIN Debit purchase and PIN Debit credit requests. Optional field for PIN Debit reversal requests.  #### GPX This field is optional for reversing an authorization or credit.  #### DCC for First Data Your local currency. For details, see the `currency` field description in [Dynamic Currency Conversion For First Data Using the SCMP API](http://apps.cybersource.com/library/documentation/dev_guides/DCC_FirstData_SCMP/DCC_FirstData_SCMP_API.pdf).  #### Tax Calculation Required for international tax and value added tax only. Optional for U.S. and Canadian taxes. Your local currency. 
    attr_accessor :currency

    # This is a multicurrency field. It contains the transaction amount (field 4), converted to the Currency used to bill the cardholder's account. This field is returned for OCT transactions. 
    attr_accessor :settlement_amount

    # This is a multicurrency-only field. It contains a 3-digit numeric code that identifies the currency used by the issuer to bill the cardholder's account. This field is returned for OCT transactions. 
    attr_accessor :settlement_currency

    # Amount in your original local pricing currency.  This value cannot be negative. You can include a decimal point (.) in this field to denote the currency exponent, but you cannot include any other special characters.  If needed, CyberSource truncates the amount to the correct number of decimal places. 
    attr_accessor :original_amount

    # Your local pricing currency code.  For the possible values, see the [ISO Standard Currency Codes.](http://apps.cybersource.com/library/documentation/sbc/quickref/currencies.pdf) 
    attr_accessor :original_currency

    # Amount up to N digit after the decimals separator as defined in ISO 4217 for the appropriate currency code. 
    attr_accessor :processor_transaction_fee

    # The rate of conversion of the currency given in the request to CNY. The conversion happens at the time when Alipay's trade order is created 
    attr_accessor :exchange_rate

    # Currency code for the transaction performed in cross border currency. 
    attr_accessor :foreign_currency

    # The transaction amount in CNY. 
    attr_accessor :foreign_amount

    # If coupons/vouchers are used in the transaction, the discount amount redeemed in the settlement currency will be returned. Otherwise, no return. 
    attr_accessor :discount_amount

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'total_amount' => :'totalAmount',
        :'authorized_amount' => :'authorizedAmount',
        :'currency' => :'currency',
        :'settlement_amount' => :'settlementAmount',
        :'settlement_currency' => :'settlementCurrency',
        :'original_amount' => :'originalAmount',
        :'original_currency' => :'originalCurrency',
        :'processor_transaction_fee' => :'processorTransactionFee',
        :'exchange_rate' => :'exchangeRate',
        :'foreign_currency' => :'foreignCurrency',
        :'foreign_amount' => :'foreignAmount',
        :'discount_amount' => :'discountAmount'
      }
    end

    # Attribute mapping from JSON key to ruby-style variable name.
    def self.json_map
      {
        :'total_amount' => :'total_amount',
        :'authorized_amount' => :'authorized_amount',
        :'currency' => :'currency',
        :'settlement_amount' => :'settlement_amount',
        :'settlement_currency' => :'settlement_currency',
        :'original_amount' => :'original_amount',
        :'original_currency' => :'original_currency',
        :'processor_transaction_fee' => :'processor_transaction_fee',
        :'exchange_rate' => :'exchange_rate',
        :'foreign_currency' => :'foreign_currency',
        :'foreign_amount' => :'foreign_amount',
        :'discount_amount' => :'discount_amount'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'total_amount' => :'String',
        :'authorized_amount' => :'String',
        :'currency' => :'String',
        :'settlement_amount' => :'String',
        :'settlement_currency' => :'String',
        :'original_amount' => :'String',
        :'original_currency' => :'String',
        :'processor_transaction_fee' => :'String',
        :'exchange_rate' => :'String',
        :'foreign_currency' => :'String',
        :'foreign_amount' => :'String',
        :'discount_amount' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'totalAmount')
        self.total_amount = attributes[:'totalAmount']
      end

      if attributes.has_key?(:'authorizedAmount')
        self.authorized_amount = attributes[:'authorizedAmount']
      end

      if attributes.has_key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.has_key?(:'settlementAmount')
        self.settlement_amount = attributes[:'settlementAmount']
      end

      if attributes.has_key?(:'settlementCurrency')
        self.settlement_currency = attributes[:'settlementCurrency']
      end

      if attributes.has_key?(:'originalAmount')
        self.original_amount = attributes[:'originalAmount']
      end

      if attributes.has_key?(:'originalCurrency')
        self.original_currency = attributes[:'originalCurrency']
      end

      if attributes.has_key?(:'processorTransactionFee')
        self.processor_transaction_fee = attributes[:'processorTransactionFee']
      end

      if attributes.has_key?(:'exchangeRate')
        self.exchange_rate = attributes[:'exchangeRate']
      end

      if attributes.has_key?(:'foreignCurrency')
        self.foreign_currency = attributes[:'foreignCurrency']
      end

      if attributes.has_key?(:'foreignAmount')
        self.foreign_amount = attributes[:'foreignAmount']
      end

      if attributes.has_key?(:'discountAmount')
        self.discount_amount = attributes[:'discountAmount']
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
    # @param [Object] total_amount Value to be assigned
    def total_amount=(total_amount)
      @total_amount = total_amount
    end

    # Custom attribute writer method with validation
    # @param [Object] authorized_amount Value to be assigned
    def authorized_amount=(authorized_amount)
      @authorized_amount = authorized_amount
    end

    # Custom attribute writer method with validation
    # @param [Object] currency Value to be assigned
    def currency=(currency)
      @currency = currency
    end

    # Custom attribute writer method with validation
    # @param [Object] settlement_amount Value to be assigned
    def settlement_amount=(settlement_amount)
      @settlement_amount = settlement_amount
    end

    # Custom attribute writer method with validation
    # @param [Object] settlement_currency Value to be assigned
    def settlement_currency=(settlement_currency)
      @settlement_currency = settlement_currency
    end

    # Custom attribute writer method with validation
    # @param [Object] original_amount Value to be assigned
    def original_amount=(original_amount)
      @original_amount = original_amount
    end

    # Custom attribute writer method with validation
    # @param [Object] original_currency Value to be assigned
    def original_currency=(original_currency)
      @original_currency = original_currency
    end

    # Custom attribute writer method with validation
    # @param [Object] processor_transaction_fee Value to be assigned
    def processor_transaction_fee=(processor_transaction_fee)
      @processor_transaction_fee = processor_transaction_fee
    end

    # Custom attribute writer method with validation
    # @param [Object] exchange_rate Value to be assigned
    def exchange_rate=(exchange_rate)
      @exchange_rate = exchange_rate
    end

    # Custom attribute writer method with validation
    # @param [Object] foreign_currency Value to be assigned
    def foreign_currency=(foreign_currency)
      @foreign_currency = foreign_currency
    end

    # Custom attribute writer method with validation
    # @param [Object] foreign_amount Value to be assigned
    def foreign_amount=(foreign_amount)
      @foreign_amount = foreign_amount
    end

    # Custom attribute writer method with validation
    # @param [Object] discount_amount Value to be assigned
    def discount_amount=(discount_amount)
      @discount_amount = discount_amount
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          total_amount == o.total_amount &&
          authorized_amount == o.authorized_amount &&
          currency == o.currency &&
          settlement_amount == o.settlement_amount &&
          settlement_currency == o.settlement_currency &&
          original_amount == o.original_amount &&
          original_currency == o.original_currency &&
          processor_transaction_fee == o.processor_transaction_fee &&
          exchange_rate == o.exchange_rate &&
          foreign_currency == o.foreign_currency &&
          foreign_amount == o.foreign_amount &&
          discount_amount == o.discount_amount
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [total_amount, authorized_amount, currency, settlement_amount, settlement_currency, original_amount, original_currency, processor_transaction_fee, exchange_rate, foreign_currency, foreign_amount, discount_amount].hash
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
