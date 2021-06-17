=begin
#OAuth2 API

#OAuth2 Token Service (OAuth2)

OpenAPI spec version: v3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class AccessTokenResponse
    # Created JWT token.
    attr_accessor :access_token

    # Bearer.
    attr_accessor :token_type

    # Newly created JWT token for initial request or if refresh token expired, else the same refresh token as in the request.
    attr_accessor :refresh_token

    # Number of seconds left till the access token gets expired.
    attr_accessor :expires_in

    # List of permissions for APIs.
    attr_accessor :scope

    # Number of seconds left till the refresh token gets expired.
    attr_accessor :refresh_token_expires_in

    # Successful response can be returned only if client status is active.
    attr_accessor :client_status

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'access_token' => :'access_token',
        :'token_type' => :'token_type',
        :'refresh_token' => :'refresh_token',
        :'expires_in' => :'expires_in',
        :'scope' => :'scope',
        :'refresh_token_expires_in' => :'refresh_token_expires_in',
        :'client_status' => :'client_status'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'access_token' => :'String',
        :'token_type' => :'String',
        :'refresh_token' => :'String',
        :'expires_in' => :'Integer',
        :'scope' => :'String',
        :'refresh_token_expires_in' => :'Integer',
        :'client_status' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'access_token')
        self.access_token = attributes[:'access_token']
      end

      if attributes.has_key?(:'token_type')
        self.token_type = attributes[:'token_type']
      end

      if attributes.has_key?(:'refresh_token')
        self.refresh_token = attributes[:'refresh_token']
      end

      if attributes.has_key?(:'expires_in')
        self.expires_in = attributes[:'expires_in']
      end

      if attributes.has_key?(:'scope')
        self.scope = attributes[:'scope']
      end

      if attributes.has_key?(:'refresh_token_expires_in')
        self.refresh_token_expires_in = attributes[:'refresh_token_expires_in']
      end

      if attributes.has_key?(:'client_status')
        self.client_status = attributes[:'client_status']
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
          access_token == o.access_token &&
          token_type == o.token_type &&
          refresh_token == o.refresh_token &&
          expires_in == o.expires_in &&
          scope == o.scope &&
          refresh_token_expires_in == o.refresh_token_expires_in &&
          client_status == o.client_status
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [access_token, token_type, refresh_token, expires_in, scope, refresh_token_expires_in, client_status].hash
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
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
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
