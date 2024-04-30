=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.38
=end

require 'date'

module CyberSource
  class Invoicingv2invoiceSettingsInvoiceSettingsInformation
    # The image file, which must be encoded in Base64 format. Supported file formats are `png`, `jpg`, and `gif`. The image file size restriction is 1 MB.
    attr_accessor :merchant_logo

    # The merchant's display name shown on the invoice.
    attr_accessor :merchant_display_name

    # The content of the email message that we send to your customers.
    attr_accessor :custom_email_message

    # Whether you would like us to send an auto-generated reminder email to your invoice recipients. Currently, this reminder email is sent five days before the invoice is due and one day after it is past due.
    attr_accessor :enable_reminders

    attr_accessor :header_style

    # The language of the email that we send to your customers. Possible values are `zh-CN`, `zh-TW`, `en-US`, `fr-FR`, `de-DE`, `ja-JP`, `pt-BR`, `ru-RU` and `es-419`.
    attr_accessor :delivery_language

    # Currency used for the order. Use the three-character [ISO Standard Currency Codes.](http://apps.cybersource.com/library/documentation/sbc/quickref/currencies.pdf)  #### Used by **Authorization** Required field.  **Authorization Reversal** For an authorization reversal (`reversalInformation`) or a capture (`processingOptions.capture` is set to `true`), you must use the same currency that you used in your payment authorization request.  #### PIN Debit Currency for the amount you requested for the PIN debit purchase. This value is returned for partial authorizations. The issuing bank can approve a partial amount if the balance on the debit card is less than the requested transaction amount. For the possible values, see the [ISO Standard Currency Codes](https://developer.cybersource.com/library/documentation/sbc/quickref/currencies.pdf). Returned by PIN debit purchase.  For PIN debit reversal requests, you must use the same currency that was used for the PIN debit purchase or PIN debit credit that you are reversing. For the possible values, see the [ISO Standard Currency Codes](https://developer.cybersource.com/library/documentation/sbc/quickref/currencies.pdf).  Required field for PIN Debit purchase and PIN Debit credit requests. Optional field for PIN Debit reversal requests.  #### GPX This field is optional for reversing an authorization or credit.  #### DCC for First Data Your local currency. For details, see the `currency` field description in [Dynamic Currency Conversion For First Data Using the SCMP API](http://apps.cybersource.com/library/documentation/dev_guides/DCC_FirstData_SCMP/DCC_FirstData_SCMP_API.pdf).  #### Tax Calculation Required for international tax and value added tax only. Optional for U.S. and Canadian taxes. Your local currency. 
    attr_accessor :default_currency_code

    # For a merchant's invoice payments, enable 3D Secure payer authentication version 1, update to 3D Secure version 2, or disable 3D Secure. Possible values are:  - `enable` - `update` - `disable`  
    attr_accessor :payer_authentication_in_invoicing

    # Display VAT number on Invoice.
    attr_accessor :show_vat_number

    # Your government-assigned tax identification number.  #### Tax Calculation Required field for value added tax only. Not applicable to U.S. and Canadian taxes. 
    attr_accessor :vat_registration_number

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'merchant_logo' => :'merchantLogo',
        :'merchant_display_name' => :'merchantDisplayName',
        :'custom_email_message' => :'customEmailMessage',
        :'enable_reminders' => :'enableReminders',
        :'header_style' => :'headerStyle',
        :'delivery_language' => :'deliveryLanguage',
        :'default_currency_code' => :'defaultCurrencyCode',
        :'payer_authentication_in_invoicing' => :'payerAuthenticationInInvoicing',
        :'show_vat_number' => :'showVatNumber',
        :'vat_registration_number' => :'vatRegistrationNumber'
      }
    end

    # Attribute mapping from JSON key to ruby-style variable name.
    def self.json_map
      {
        :'merchant_logo' => :'merchant_logo',
        :'merchant_display_name' => :'merchant_display_name',
        :'custom_email_message' => :'custom_email_message',
        :'enable_reminders' => :'enable_reminders',
        :'header_style' => :'header_style',
        :'delivery_language' => :'delivery_language',
        :'default_currency_code' => :'default_currency_code',
        :'payer_authentication_in_invoicing' => :'payer_authentication_in_invoicing',
        :'show_vat_number' => :'show_vat_number',
        :'vat_registration_number' => :'vat_registration_number'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'merchant_logo' => :'String',
        :'merchant_display_name' => :'String',
        :'custom_email_message' => :'String',
        :'enable_reminders' => :'BOOLEAN',
        :'header_style' => :'InvoicingV2InvoiceSettingsGet200ResponseInvoiceSettingsInformationHeaderStyle',
        :'delivery_language' => :'String',
        :'default_currency_code' => :'String',
        :'payer_authentication_in_invoicing' => :'String',
        :'show_vat_number' => :'BOOLEAN',
        :'vat_registration_number' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'merchantLogo')
        self.merchant_logo = attributes[:'merchantLogo']
      end

      if attributes.has_key?(:'merchantDisplayName')
        self.merchant_display_name = attributes[:'merchantDisplayName']
      end

      if attributes.has_key?(:'customEmailMessage')
        self.custom_email_message = attributes[:'customEmailMessage']
      end

      if attributes.has_key?(:'enableReminders')
        self.enable_reminders = attributes[:'enableReminders']
      end

      if attributes.has_key?(:'headerStyle')
        self.header_style = attributes[:'headerStyle']
      end

      if attributes.has_key?(:'deliveryLanguage')
        self.delivery_language = attributes[:'deliveryLanguage']
      end

      if attributes.has_key?(:'defaultCurrencyCode')
        self.default_currency_code = attributes[:'defaultCurrencyCode']
      end

      if attributes.has_key?(:'payerAuthenticationInInvoicing')
        self.payer_authentication_in_invoicing = attributes[:'payerAuthenticationInInvoicing']
      end

      if attributes.has_key?(:'showVatNumber')
        self.show_vat_number = attributes[:'showVatNumber']
      else
        self.show_vat_number = false
      end

      if attributes.has_key?(:'vatRegistrationNumber')
        self.vat_registration_number = attributes[:'vatRegistrationNumber']
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
    # @param [Object] merchant_logo Value to be assigned
    def merchant_logo=(merchant_logo)
      @merchant_logo = merchant_logo
    end

    # Custom attribute writer method with validation
    # @param [Object] merchant_display_name Value to be assigned
    def merchant_display_name=(merchant_display_name)
      @merchant_display_name = merchant_display_name
    end

    # Custom attribute writer method with validation
    # @param [Object] custom_email_message Value to be assigned
    def custom_email_message=(custom_email_message)
      @custom_email_message = custom_email_message
    end

    # Custom attribute writer method with validation
    # @param [Object] delivery_language Value to be assigned
    def delivery_language=(delivery_language)
      @delivery_language = delivery_language
    end

    # Custom attribute writer method with validation
    # @param [Object] default_currency_code Value to be assigned
    def default_currency_code=(default_currency_code)
      @default_currency_code = default_currency_code
    end

    # Custom attribute writer method with validation
    # @param [Object] payer_authentication_in_invoicing Value to be assigned
    def payer_authentication_in_invoicing=(payer_authentication_in_invoicing)
      @payer_authentication_in_invoicing = payer_authentication_in_invoicing
    end

    # Custom attribute writer method with validation
    # @param [Object] vat_registration_number Value to be assigned
    def vat_registration_number=(vat_registration_number)
      @vat_registration_number = vat_registration_number
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          merchant_logo == o.merchant_logo &&
          merchant_display_name == o.merchant_display_name &&
          custom_email_message == o.custom_email_message &&
          enable_reminders == o.enable_reminders &&
          header_style == o.header_style &&
          delivery_language == o.delivery_language &&
          default_currency_code == o.default_currency_code &&
          payer_authentication_in_invoicing == o.payer_authentication_in_invoicing &&
          show_vat_number == o.show_vat_number &&
          vat_registration_number == o.vat_registration_number
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [merchant_logo, merchant_display_name, custom_email_message, enable_reminders, header_style, delivery_language, default_currency_code, payer_authentication_in_invoicing, show_vat_number, vat_registration_number].hash
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
