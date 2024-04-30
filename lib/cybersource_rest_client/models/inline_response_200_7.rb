=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.38
=end

require 'date'

module CyberSource
  class InlineResponse2007
    attr_accessor :_links

    # Unique identification number assigned to the submitted request.
    attr_accessor :batch_id

    # ISO-8601 format: yyyy-MM-ddTHH:mm:ssZ
    attr_accessor :batch_created_date

    # Valid Values:   * SCHEDULER   * TOKEN_API   * CREDIT_CARD_FILE_UPLOAD   * AMEX_REGSITRY   * AMEX_REGISTRY_API   * AMEX_MAINTENANCE 
    attr_accessor :batch_source

    # Reference used by merchant to identify batch.
    attr_accessor :merchant_reference

    attr_accessor :batch_ca_endpoints

    # Valid Values:   * REJECTED   * RECEIVED   * VALIDATED   * DECLINED   * PROCESSING   * COMPLETED 
    attr_accessor :status

    attr_accessor :totals

    attr_accessor :billing

    attr_accessor :description

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'_links' => :'_links',
        :'batch_id' => :'batchId',
        :'batch_created_date' => :'batchCreatedDate',
        :'batch_source' => :'batchSource',
        :'merchant_reference' => :'merchantReference',
        :'batch_ca_endpoints' => :'batchCaEndpoints',
        :'status' => :'status',
        :'totals' => :'totals',
        :'billing' => :'billing',
        :'description' => :'description'
      }
    end

    # Attribute mapping from JSON key to ruby-style variable name.
    def self.json_map
      {
        :'_links' => :'_links',
        :'batch_id' => :'batch_id',
        :'batch_created_date' => :'batch_created_date',
        :'batch_source' => :'batch_source',
        :'merchant_reference' => :'merchant_reference',
        :'batch_ca_endpoints' => :'batch_ca_endpoints',
        :'status' => :'status',
        :'totals' => :'totals',
        :'billing' => :'billing',
        :'description' => :'description'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'_links' => :'InlineResponse2007Links',
        :'batch_id' => :'String',
        :'batch_created_date' => :'String',
        :'batch_source' => :'String',
        :'merchant_reference' => :'String',
        :'batch_ca_endpoints' => :'String',
        :'status' => :'String',
        :'totals' => :'InlineResponse2006EmbeddedTotals',
        :'billing' => :'InlineResponse2007Billing',
        :'description' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'_links')
        self._links = attributes[:'_links']
      end

      if attributes.has_key?(:'batchId')
        self.batch_id = attributes[:'batchId']
      end

      if attributes.has_key?(:'batchCreatedDate')
        self.batch_created_date = attributes[:'batchCreatedDate']
      end

      if attributes.has_key?(:'batchSource')
        self.batch_source = attributes[:'batchSource']
      end

      if attributes.has_key?(:'merchantReference')
        self.merchant_reference = attributes[:'merchantReference']
      end

      if attributes.has_key?(:'batchCaEndpoints')
        self.batch_ca_endpoints = attributes[:'batchCaEndpoints']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'totals')
        self.totals = attributes[:'totals']
      end

      if attributes.has_key?(:'billing')
        self.billing = attributes[:'billing']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
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
    # @param [Object] merchant_reference Value to be assigned
    def merchant_reference=(merchant_reference)
      @merchant_reference = merchant_reference
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          _links == o._links &&
          batch_id == o.batch_id &&
          batch_created_date == o.batch_created_date &&
          batch_source == o.batch_source &&
          merchant_reference == o.merchant_reference &&
          batch_ca_endpoints == o.batch_ca_endpoints &&
          status == o.status &&
          totals == o.totals &&
          billing == o.billing &&
          description == o.description
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [_links, batch_id, batch_created_date, batch_source, merchant_reference, batch_ca_endpoints, status, totals, billing, description].hash
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
