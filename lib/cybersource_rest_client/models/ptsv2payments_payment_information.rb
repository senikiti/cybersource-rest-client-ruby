=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.38
=end

require 'date'

module CyberSource
  class Ptsv2paymentsPaymentInformation
    attr_accessor :card

    attr_accessor :tokenized_card

    attr_accessor :direct_debit

    attr_accessor :fluid_data

    attr_accessor :customer

    attr_accessor :payment_instrument

    attr_accessor :instrument_identifier

    attr_accessor :shipping_address

    attr_accessor :legacy_token

    attr_accessor :bank

    attr_accessor :options

    attr_accessor :payment_type

    # Mastercard-defined code that indicates how the account information was obtained.  - `00`: Card - `01`: Mobile Network Operator (MNO) controlled removable secure element (SIM or UICC) personalized for use with a mobile phone or smartphone - `02`: Key fob - `03`: Watch using a contactless chip or a fixed (non-removable) secure element not controlled by the MNO - `04`: Mobile tag - `05`: Wristband - `06`: Mobile phone case or sleeve - `07`: Mobile phone or smartphone with a fixed (non-removable) secure element controlled by the MNO,for example, code division multiple access (CDMA) - `08`: Removable secure element not controlled by the MNO, for example, memory card personalized forused with a mobile phone or smartphone - `09`: Mobile Phone or smartphone with a fixed (non-removable) secure element not controlled by the MNO - `10`: MNO controlled removable secure element (SIM or UICC) personalized for use with a tablet or e-book - `11`: Tablet or e-book with a fixed (non-removable) secure element controlled by the MNO - `12`: Removable secure element not controlled by the MNO, for example, memory card personalized foruse with a tablet or e-book - `13`: Tablet or e-book with fixed (non-removable) secure element not controlled by the MNO - `14`: Mobile phone or smartphone with a payment application running in a host processor - `15`: Tablet or e-book with a payment application running in a host processor - `16`: Mobile phone or smartphone with a payment application running in the Trusted ExecutionEnvironment (TEE) of a host processor - `17`: Tablet or e-book with a payment application running in the TEE of a host processor - `18`: Watch with a payment application running in the TEE of a host processor - `19`: Watch with a payment application running in a host processor  Values from 20–99 exclusively indicate the form factor only without also indicating the storage technology  - `20`: Card - `21`: Phone e.g. Mobile Phone - `22`: Tablet/e-reader - `23`: Watch/Wristband e.g. Watch or wristband, including a fitness band, smart strap, disposable band, watch add-on, and security/ID band - `24`: Sticker - `25`: PC - `26`: Device Peripheral e.g. mobile phone case or sleeve - `27`: Tag e.g. key fob or mobile tag - `28`: Jewelry e.g. ring, bracelet, necklace and cuff links - `29`: Fashion Accessory e.g. handbag, bag charm and glasses - `30`: Garment e.g. dress - `31`: Domestic Appliance e.g refrigerator, washing machine - `32`: Vehicle e.g. vehicle, including vehicle attached devices - `33`: Media/Gaming Device e.g. media or gaming device, including a set top box, media player and television  34–99 are reserved for future form factors. Any value in this range may occur within form factor and transaction data without prior notice.  This field is supported only for Mastercard on CyberSource through VisaNet. When initiation channel is not provided via this API field, the value is extracted from EMV tag 9F6E for Mastercard transactions. To enable this feature please call support.  #### Used by **Authorization** Optional field. 
    attr_accessor :initiation_channel

    attr_accessor :sepa

    attr_accessor :e_wallet

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'card' => :'card',
        :'tokenized_card' => :'tokenizedCard',
        :'direct_debit' => :'directDebit',
        :'fluid_data' => :'fluidData',
        :'customer' => :'customer',
        :'payment_instrument' => :'paymentInstrument',
        :'instrument_identifier' => :'instrumentIdentifier',
        :'shipping_address' => :'shippingAddress',
        :'legacy_token' => :'legacyToken',
        :'bank' => :'bank',
        :'options' => :'options',
        :'payment_type' => :'paymentType',
        :'initiation_channel' => :'initiationChannel',
        :'sepa' => :'sepa',
        :'e_wallet' => :'eWallet'
      }
    end

    # Attribute mapping from JSON key to ruby-style variable name.
    def self.json_map
      {
        :'card' => :'card',
        :'tokenized_card' => :'tokenized_card',
        :'direct_debit' => :'direct_debit',
        :'fluid_data' => :'fluid_data',
        :'customer' => :'customer',
        :'payment_instrument' => :'payment_instrument',
        :'instrument_identifier' => :'instrument_identifier',
        :'shipping_address' => :'shipping_address',
        :'legacy_token' => :'legacy_token',
        :'bank' => :'bank',
        :'options' => :'options',
        :'payment_type' => :'payment_type',
        :'initiation_channel' => :'initiation_channel',
        :'sepa' => :'sepa',
        :'e_wallet' => :'e_wallet'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'card' => :'Ptsv2paymentsPaymentInformationCard',
        :'tokenized_card' => :'Ptsv2paymentsPaymentInformationTokenizedCard',
        :'direct_debit' => :'Ptsv2paymentsPaymentInformationDirectDebit',
        :'fluid_data' => :'Ptsv2paymentsPaymentInformationFluidData',
        :'customer' => :'Ptsv2paymentsPaymentInformationCustomer',
        :'payment_instrument' => :'Ptsv2paymentsPaymentInformationPaymentInstrument',
        :'instrument_identifier' => :'Ptsv2paymentsPaymentInformationInstrumentIdentifier',
        :'shipping_address' => :'Ptsv2paymentsPaymentInformationShippingAddress',
        :'legacy_token' => :'Ptsv2paymentsPaymentInformationLegacyToken',
        :'bank' => :'Ptsv2paymentsPaymentInformationBank',
        :'options' => :'Ptsv2paymentsPaymentInformationOptions',
        :'payment_type' => :'Ptsv2paymentsPaymentInformationPaymentType',
        :'initiation_channel' => :'String',
        :'sepa' => :'Ptsv2paymentsPaymentInformationSepa',
        :'e_wallet' => :'Ptsv2paymentsPaymentInformationEWallet'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'card')
        self.card = attributes[:'card']
      end

      if attributes.has_key?(:'tokenizedCard')
        self.tokenized_card = attributes[:'tokenizedCard']
      end

      if attributes.has_key?(:'directDebit')
        self.direct_debit = attributes[:'directDebit']
      end

      if attributes.has_key?(:'fluidData')
        self.fluid_data = attributes[:'fluidData']
      end

      if attributes.has_key?(:'customer')
        self.customer = attributes[:'customer']
      end

      if attributes.has_key?(:'paymentInstrument')
        self.payment_instrument = attributes[:'paymentInstrument']
      end

      if attributes.has_key?(:'instrumentIdentifier')
        self.instrument_identifier = attributes[:'instrumentIdentifier']
      end

      if attributes.has_key?(:'shippingAddress')
        self.shipping_address = attributes[:'shippingAddress']
      end

      if attributes.has_key?(:'legacyToken')
        self.legacy_token = attributes[:'legacyToken']
      end

      if attributes.has_key?(:'bank')
        self.bank = attributes[:'bank']
      end

      if attributes.has_key?(:'options')
        self.options = attributes[:'options']
      end

      if attributes.has_key?(:'paymentType')
        self.payment_type = attributes[:'paymentType']
      end

      if attributes.has_key?(:'initiationChannel')
        self.initiation_channel = attributes[:'initiationChannel']
      end

      if attributes.has_key?(:'sepa')
        self.sepa = attributes[:'sepa']
      end

      if attributes.has_key?(:'eWallet')
        self.e_wallet = attributes[:'eWallet']
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
    # @param [Object] initiation_channel Value to be assigned
    def initiation_channel=(initiation_channel)
      @initiation_channel = initiation_channel
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          card == o.card &&
          tokenized_card == o.tokenized_card &&
          direct_debit == o.direct_debit &&
          fluid_data == o.fluid_data &&
          customer == o.customer &&
          payment_instrument == o.payment_instrument &&
          instrument_identifier == o.instrument_identifier &&
          shipping_address == o.shipping_address &&
          legacy_token == o.legacy_token &&
          bank == o.bank &&
          options == o.options &&
          payment_type == o.payment_type &&
          initiation_channel == o.initiation_channel &&
          sepa == o.sepa &&
          e_wallet == o.e_wallet
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [card, tokenized_card, direct_debit, fluid_data, customer, payment_instrument, instrument_identifier, shipping_address, legacy_token, bank, options, payment_type, initiation_channel, sepa, e_wallet].hash
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
