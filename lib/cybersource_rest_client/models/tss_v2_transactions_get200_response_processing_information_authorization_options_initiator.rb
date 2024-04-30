=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.38
=end

require 'date'

module CyberSource
  class TssV2TransactionsGet200ResponseProcessingInformationAuthorizationOptionsInitiator
    # This field indicates whether the transaction is a merchant-initiated transaction or customer-initiated transaction.  Valid values: - **customer** - **merchant** 
    attr_accessor :type

    # Indicates to the issuing bank two things: - The merchant has received consent from the cardholder to store their card details on file - The merchant wants the issuing bank to check out the card details before the merchant initiates their first transaction for this cardholder. The purpose of the merchant-initiated transaction is to ensure that the cardholder's credentials are valid (that the card is not stolen or has restrictions) and that the card details are good to be stored on the merchant's file for future transactions.  Valid values: - `Y` means merchant will use this transaction to store payment credentials for follow-up merchant-initiated transactions. - `N` means merchant will not use this transaction to store payment credentials for follow-up merchant-initiated transactions.  For details, see `subsequent_auth_first` field description in the [Credit Card Services Using the SCMP API Guide.](https://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html/)  **NOTE:** The value for this field does not correspond to any data in the TC 33 capture file5.  This field is supported only for Visa transactions on CyberSource through VisaNet. 
    attr_accessor :credential_stored_on_file

    # Indicates to an issuing bank whether a merchant-initiated transaction came from a card that was already stored on file.  Possible values: - **Y** means the merchant-initiated transaction came from a card that was already stored on file. - **N**  means the merchant-initiated transaction came from a card that was not stored on file. 
    attr_accessor :stored_credential_used

    attr_accessor :merchant_initiated_transaction

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'type' => :'type',
        :'credential_stored_on_file' => :'credentialStoredOnFile',
        :'stored_credential_used' => :'storedCredentialUsed',
        :'merchant_initiated_transaction' => :'merchantInitiatedTransaction'
      }
    end

    # Attribute mapping from JSON key to ruby-style variable name.
    def self.json_map
      {
        :'type' => :'type',
        :'credential_stored_on_file' => :'credential_stored_on_file',
        :'stored_credential_used' => :'stored_credential_used',
        :'merchant_initiated_transaction' => :'merchant_initiated_transaction'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'type' => :'String',
        :'credential_stored_on_file' => :'String',
        :'stored_credential_used' => :'String',
        :'merchant_initiated_transaction' => :'MerchantInitiatedTransactionObject'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'credentialStoredOnFile')
        self.credential_stored_on_file = attributes[:'credentialStoredOnFile']
      end

      if attributes.has_key?(:'storedCredentialUsed')
        self.stored_credential_used = attributes[:'storedCredentialUsed']
      end

      if attributes.has_key?(:'merchantInitiatedTransaction')
        self.merchant_initiated_transaction = attributes[:'merchantInitiatedTransaction']
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

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          credential_stored_on_file == o.credential_stored_on_file &&
          stored_credential_used == o.stored_credential_used &&
          merchant_initiated_transaction == o.merchant_initiated_transaction
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [type, credential_stored_on_file, stored_credential_used, merchant_initiated_transaction].hash
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
