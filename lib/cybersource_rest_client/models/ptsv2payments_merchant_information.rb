=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.38
=end

require 'date'

module CyberSource
  class Ptsv2paymentsMerchantInformation
    attr_accessor :merchant_descriptor

    # This field will contain either the merchant url or the reverse domain as per the requirement for DSRP Format 3. This might vary transaction to transaction and might not be static. Merchant needs to have access to send this value for all DSRP program. 
    attr_accessor :domain_name

    # Company ID assigned to an independent sales organization. Get this value from Mastercard.  #### CyberSource through VisaNet The value for this field corresponds to the following data in the TC 33 capture file: - Record: CP01 TCR6 - Position: 106-116 - Field: Independent Sales Organization ID  This field is supported for Visa, Mastercard and Discover Transactions.  **Note** The TC 33 Capture file contains information about the purchases and refunds that a merchant submits to CyberSource. CyberSource through VisaNet creates the TC 33 Capture file at the end of the day and sends it to the merchant's acquirer, who uses this information to facilitate end-of-day clearing processing with payment card companies.  For processor-specific information, see the `sales_organization_ID` field description in [Credit Card Services Using the SCMP API.](http://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html) 
    attr_accessor :sales_organization_id

    # The value for this field is a four-digit number that the payment card industry uses to classify merchants into market segments. A payment card company assigned one or more of these values to your business when you started accepting the payment card company's cards. When you do not include this field in your request, CyberSource uses the value in your CyberSource account.  For processor-specific information, see the `merchant_category_code` field description in [Credit Card Services Using the SCMP API.](http://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html)  #### CyberSource through VisaNet The value for this field corresponds to the following data in the TC 33 capture file5: - Record: CP01 TCR4 - Position: 150-153 - Field: Merchant Category Code 
    attr_accessor :category_code

    # Merchant category code for domestic transactions. The value for this field is a four-digit number that the payment card industry uses to classify merchants into market segments. A payment card company assigned one or more of these values to your business when you started accepting the payment card company's cards. Including this field in a request for a domestic transaction might reduce interchange fees.  When you include this field in a request: - Do not include the `merchant_category_code` field. - The value for this field overrides the value in your CyberSource account.  This field is supported only for: - Domestic transactions with Mastercard in Spain. Domestic means that you and the cardholder are in the same country. - Merchants enrolled in the OmniPay Direct interchange program. - First Data Merchant Solutions (Europe) on OmniPay Direct. 
    attr_accessor :category_code_domestic

    # Your Cadastro Nacional da Pessoa Jurídica (CNPJ) number.  This field is supported only for BNDES transactions on CyberSource through VisaNet.  The value for this field corresponds to the following data in the TC 33 capture file5: - Record: CP07 TCR6 - Position: 40-59 - Field: BNDES Reference Field 1  For details, see `bill_merchant_tax_id` field description in the [Credit Card Services Using the SCMP API.](https://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html/) 
    attr_accessor :tax_id

    # Your government-assigned tax identification number.  #### Tax Calculation Required field for value added tax only. Not applicable to U.S. and Canadian taxes.  #### CyberSource through VisaNet For CtV processors, the maximum length is 20.  For other processor-specific information, see the `merchant_vat_registration_number` field description in [Level II and Level III Processing Using the SCMP API.](http://apps.cybersource.com/library/documentation/dev_guides/Level_2_3_SCMP_API/html) 
    attr_accessor :vat_registration_number

    # Reference number that facilitates card acceptor/corporation communication and record keeping.  For processor-specific information, see the `card_acceptor_ref_number` field description in [Level II and Level III Processing Using the SCMP API.](http://apps.cybersource.com/library/documentation/dev_guides/Level_2_3_SCMP_API/html) 
    attr_accessor :card_acceptor_reference_number

    # Date and time at your physical location.  Format: `YYYYMMDDhhmmss`, where:  - `YYYY` = year  - `MM` = month  - `DD` = day  - `hh` = hour  - `mm` = minutes  - `ss` = seconds  #### Used by **Authorization** Required for these processors: - American Express Direct                                                                                                                                                                                                                                                                                                                         - American Express Direct - Credit Mutuel-CIC - FDC Nashville Global - SIX  Optional for all other processors. 
    attr_accessor :transaction_local_date_time

    attr_accessor :service_fee_descriptor

    # customer would be redirected to this url based on the decision of the transaction
    attr_accessor :cancel_url

    # customer would be redirected to this url based on the decision of the transaction
    attr_accessor :success_url

    # customer would be redirected to this url based on the decision of the transaction
    attr_accessor :failure_url

    # URL for displaying payment results to the consumer (notifications) after the transaction is processed. Usually this URL belongs to merchant and its behavior is defined by merchant 
    attr_accessor :return_url

    # #### Visa Platform Connect This field may be used for transactions on accounts issued under co-branding agreements when one of the co-branding partners. 
    attr_accessor :partner_id_code

    attr_accessor :service_location

    # Free-form text field. 
    attr_accessor :note_to_buyer

    # Use this field only if you are requesting payment with Payer Authentication serice together.  Your company's name as you want it to appear to the customer in the issuing bank's authentication form. This value overrides the value specified by your merchant bank. 
    attr_accessor :merchant_name

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'merchant_descriptor' => :'merchantDescriptor',
        :'domain_name' => :'domainName',
        :'sales_organization_id' => :'salesOrganizationId',
        :'category_code' => :'categoryCode',
        :'category_code_domestic' => :'categoryCodeDomestic',
        :'tax_id' => :'taxId',
        :'vat_registration_number' => :'vatRegistrationNumber',
        :'card_acceptor_reference_number' => :'cardAcceptorReferenceNumber',
        :'transaction_local_date_time' => :'transactionLocalDateTime',
        :'service_fee_descriptor' => :'serviceFeeDescriptor',
        :'cancel_url' => :'cancelUrl',
        :'success_url' => :'successUrl',
        :'failure_url' => :'failureUrl',
        :'return_url' => :'returnUrl',
        :'partner_id_code' => :'partnerIdCode',
        :'service_location' => :'serviceLocation',
        :'note_to_buyer' => :'noteToBuyer',
        :'merchant_name' => :'merchantName'
      }
    end

    # Attribute mapping from JSON key to ruby-style variable name.
    def self.json_map
      {
        :'merchant_descriptor' => :'merchant_descriptor',
        :'domain_name' => :'domain_name',
        :'sales_organization_id' => :'sales_organization_id',
        :'category_code' => :'category_code',
        :'category_code_domestic' => :'category_code_domestic',
        :'tax_id' => :'tax_id',
        :'vat_registration_number' => :'vat_registration_number',
        :'card_acceptor_reference_number' => :'card_acceptor_reference_number',
        :'transaction_local_date_time' => :'transaction_local_date_time',
        :'service_fee_descriptor' => :'service_fee_descriptor',
        :'cancel_url' => :'cancel_url',
        :'success_url' => :'success_url',
        :'failure_url' => :'failure_url',
        :'return_url' => :'return_url',
        :'partner_id_code' => :'partner_id_code',
        :'service_location' => :'service_location',
        :'note_to_buyer' => :'note_to_buyer',
        :'merchant_name' => :'merchant_name'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'merchant_descriptor' => :'Ptsv2paymentsMerchantInformationMerchantDescriptor',
        :'domain_name' => :'String',
        :'sales_organization_id' => :'String',
        :'category_code' => :'Integer',
        :'category_code_domestic' => :'Integer',
        :'tax_id' => :'String',
        :'vat_registration_number' => :'String',
        :'card_acceptor_reference_number' => :'String',
        :'transaction_local_date_time' => :'String',
        :'service_fee_descriptor' => :'Ptsv2paymentsMerchantInformationServiceFeeDescriptor',
        :'cancel_url' => :'String',
        :'success_url' => :'String',
        :'failure_url' => :'String',
        :'return_url' => :'String',
        :'partner_id_code' => :'String',
        :'service_location' => :'Ptsv2paymentsMerchantInformationServiceLocation',
        :'note_to_buyer' => :'String',
        :'merchant_name' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'merchantDescriptor')
        self.merchant_descriptor = attributes[:'merchantDescriptor']
      end

      if attributes.has_key?(:'domainName')
        self.domain_name = attributes[:'domainName']
      end

      if attributes.has_key?(:'salesOrganizationId')
        self.sales_organization_id = attributes[:'salesOrganizationId']
      end

      if attributes.has_key?(:'categoryCode')
        self.category_code = attributes[:'categoryCode']
      end

      if attributes.has_key?(:'categoryCodeDomestic')
        self.category_code_domestic = attributes[:'categoryCodeDomestic']
      end

      if attributes.has_key?(:'taxId')
        self.tax_id = attributes[:'taxId']
      end

      if attributes.has_key?(:'vatRegistrationNumber')
        self.vat_registration_number = attributes[:'vatRegistrationNumber']
      end

      if attributes.has_key?(:'cardAcceptorReferenceNumber')
        self.card_acceptor_reference_number = attributes[:'cardAcceptorReferenceNumber']
      end

      if attributes.has_key?(:'transactionLocalDateTime')
        self.transaction_local_date_time = attributes[:'transactionLocalDateTime']
      end

      if attributes.has_key?(:'serviceFeeDescriptor')
        self.service_fee_descriptor = attributes[:'serviceFeeDescriptor']
      end

      if attributes.has_key?(:'cancelUrl')
        self.cancel_url = attributes[:'cancelUrl']
      end

      if attributes.has_key?(:'successUrl')
        self.success_url = attributes[:'successUrl']
      end

      if attributes.has_key?(:'failureUrl')
        self.failure_url = attributes[:'failureUrl']
      end

      if attributes.has_key?(:'returnUrl')
        self.return_url = attributes[:'returnUrl']
      end

      if attributes.has_key?(:'partnerIdCode')
        self.partner_id_code = attributes[:'partnerIdCode']
      end

      if attributes.has_key?(:'serviceLocation')
        self.service_location = attributes[:'serviceLocation']
      end

      if attributes.has_key?(:'noteToBuyer')
        self.note_to_buyer = attributes[:'noteToBuyer']
      end

      if attributes.has_key?(:'merchantName')
        self.merchant_name = attributes[:'merchantName']
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
    # @param [Object] domain_name Value to be assigned
    def domain_name=(domain_name)
      @domain_name = domain_name
    end

    # Custom attribute writer method with validation
    # @param [Object] sales_organization_id Value to be assigned
    def sales_organization_id=(sales_organization_id)
      @sales_organization_id = sales_organization_id
    end

    # Custom attribute writer method with validation
    # @param [Object] category_code Value to be assigned
    def category_code=(category_code)
      @category_code = category_code
    end

    # Custom attribute writer method with validation
    # @param [Object] category_code_domestic Value to be assigned
    def category_code_domestic=(category_code_domestic)
      @category_code_domestic = category_code_domestic
    end

    # Custom attribute writer method with validation
    # @param [Object] tax_id Value to be assigned
    def tax_id=(tax_id)
      @tax_id = tax_id
    end

    # Custom attribute writer method with validation
    # @param [Object] vat_registration_number Value to be assigned
    def vat_registration_number=(vat_registration_number)
      @vat_registration_number = vat_registration_number
    end

    # Custom attribute writer method with validation
    # @param [Object] card_acceptor_reference_number Value to be assigned
    def card_acceptor_reference_number=(card_acceptor_reference_number)
      @card_acceptor_reference_number = card_acceptor_reference_number
    end

    # Custom attribute writer method with validation
    # @param [Object] transaction_local_date_time Value to be assigned
    def transaction_local_date_time=(transaction_local_date_time)
      @transaction_local_date_time = transaction_local_date_time
    end

    # Custom attribute writer method with validation
    # @param [Object] cancel_url Value to be assigned
    def cancel_url=(cancel_url)
      @cancel_url = cancel_url
    end

    # Custom attribute writer method with validation
    # @param [Object] success_url Value to be assigned
    def success_url=(success_url)
      @success_url = success_url
    end

    # Custom attribute writer method with validation
    # @param [Object] failure_url Value to be assigned
    def failure_url=(failure_url)
      @failure_url = failure_url
    end

    # Custom attribute writer method with validation
    # @param [Object] return_url Value to be assigned
    def return_url=(return_url)
      @return_url = return_url
    end

    # Custom attribute writer method with validation
    # @param [Object] partner_id_code Value to be assigned
    def partner_id_code=(partner_id_code)
      @partner_id_code = partner_id_code
    end

    # Custom attribute writer method with validation
    # @param [Object] note_to_buyer Value to be assigned
    def note_to_buyer=(note_to_buyer)
      @note_to_buyer = note_to_buyer
    end

    # Custom attribute writer method with validation
    # @param [Object] merchant_name Value to be assigned
    def merchant_name=(merchant_name)
      @merchant_name = merchant_name
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          merchant_descriptor == o.merchant_descriptor &&
          domain_name == o.domain_name &&
          sales_organization_id == o.sales_organization_id &&
          category_code == o.category_code &&
          category_code_domestic == o.category_code_domestic &&
          tax_id == o.tax_id &&
          vat_registration_number == o.vat_registration_number &&
          card_acceptor_reference_number == o.card_acceptor_reference_number &&
          transaction_local_date_time == o.transaction_local_date_time &&
          service_fee_descriptor == o.service_fee_descriptor &&
          cancel_url == o.cancel_url &&
          success_url == o.success_url &&
          failure_url == o.failure_url &&
          return_url == o.return_url &&
          partner_id_code == o.partner_id_code &&
          service_location == o.service_location &&
          note_to_buyer == o.note_to_buyer &&
          merchant_name == o.merchant_name
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [merchant_descriptor, domain_name, sales_organization_id, category_code, category_code_domestic, tax_id, vat_registration_number, card_acceptor_reference_number, transaction_local_date_time, service_fee_descriptor, cancel_url, success_url, failure_url, return_url, partner_id_code, service_location, note_to_buyer, merchant_name].hash
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
