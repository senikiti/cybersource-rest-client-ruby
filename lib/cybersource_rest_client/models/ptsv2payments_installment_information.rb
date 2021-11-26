=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class Ptsv2paymentsInstallmentInformation
    # Amount for the current installment payment.  This field is supported only for CyberSource through VisaNet.  For details, see `installment_amount` field description in the [Credit Card Services Using the SCMP API Guide.](https://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html/) 
    attr_accessor :amount

    # Frequency of the installment payments. When you do not include this field in a request for a Crediario installment payment, CyberSource sends a space character to the processor.  For details, see `installment_frequency` field description in the [Credit Card Services Using the SCMP API Guide](https://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html/)  This field is supported only for CyberSource through VisaNet. Possible values: - `B`: Biweekly - `M`: Monthly - `W`: Weekly  For Crediario installment payments, the value for this field corresponds to the following data in the TC 33 capture file5: - Record: CP01 TCR9 - Position: 41 - Field: Installment Frequency  For details, see \"Installment Payments\" in the [Credit Card Services Using the SCMP API Guide](https://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html/) 
    attr_accessor :frequency

    # #### American Express Direct, Cielo, and CyberSource Latin American Processing Flag that indicates the type of funding for the installment plan associated with the payment.  Possible values: - `1`: Merchant-funded installment plan - `2`: Issuer-funded installment plan If you do not include this field in the request, CyberSource uses the value in your CyberSource account.  To change the value in your CyberSource account, contact CyberSource Customer Service. For details, see `installment_plan_type` field description in the [Credit Card Services Using the SCMP API Guide](https://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html/)  #### CyberSource through VisaNet and American Express Defined code that indicates the type of installment plan for this transaction.  Contact American Express for: - Information about the kinds of installment plans that American Express provides - Values for this field  For installment payments with American Express in Brazil, the value for this field corresponds to the following data in the TC 33 capture file*: - Record: CP07 TCR3 - Position: 5-6 - Field: Plan Type  * The TC 33 Capture file contains information about the purchases and refunds that a merchant submits to CyberSource. CyberSource through VisaNet creates the TC 33 Capture file at the end of the day and sends it to the merchant’s acquirer, who uses this information to facilitate end-of-day clearing processing with payment card companies.  #### CyberSource through VisaNet with Visa or Mastercard Flag indicating the type of funding for the installment plan associated with the payment. Possible values: - 1 or 01: Merchant-funded installment plan - 2 or 02: Issuer-funded installment plan - 43: Crediario installment plan—only with Visa in Brazil For details, see \"Installment Payments on CyberSource through VisaNet\" in the [Credit Card Services Using the SCMP API Guide](https://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html/)  For installment payments with Visa in Brazil, the value for this field corresponds to the following data in the TC 33 capture file5: - Record: CP07 TCR1 - Position: 5-6 - Field: Installment Type  For all other kinds of installment payments, the value for this field corresponds to the following data in the TC 33 capture file5: - Record: CP01 TCR5 - Position: 39-40 - Field: Installment Plan Type (Issuer or Merchant) 
    attr_accessor :plan_type

    # Installment number when making payments in installments. Used along with `totalCount` to track which payment is being processed.  For example, the second of 5 payments would be passed to CyberSource as `sequence` = 2 and `totalCount` = 5.  For details, see \"Installment Payments\" in the [Credit Card Services Using the SCMP API Guide](https://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html/)  #### Chase Paymentech Solutions and FDC Compass This field is optional because this value is required in the merchant descriptors. For details, see \"Chase Paymentech Solutions Merchant Descriptors\" and \"FDC Compass Merchant Descriptors\" in the [Merchant Descriptors Using the SCMP API] (https://apps.cybersource.com/library/documentation/dev_guides/Merchant_Descriptors_SCMP_API/html/)  #### CyberSource through VisaNet When you do not include this field in a request for a Crediario installment payment, CyberSource sends a value of 0 to the processor.  For Crediario installment payments, the value for this field corresponds to the following data in the TC 33 capture file*: - Record: CP01 TCR9 - Position: 38-40 - Field: Installment Payment Number  * The TC 33 Capture file contains information about the purchases and refunds that a merchant submits to CyberSource. CyberSource through VisaNet creates the TC 33 Capture file at the end of the day and sends it to the merchant’s acquirer, who uses this information to facilitate end-of-day clearing processing with payment card companies. 
    attr_accessor :sequence

    # Total amount of the loan that is being paid in installments. This field is supported only for CyberSource through VisaNet.  For details, see \"Installment Payments\" in [Credit Card Services Using the SCMP API.](https://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html/) 
    attr_accessor :total_amount

    # Total number of installments when making payments in installments.  For details, see \"Installment Payments\" in the [Credit Card Services Using the SCMP API Guide.](https://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html/)  #### Chase Paymentech Solutions and FDC Compass This field is optional because this value is required in the merchant descriptors.  For details, see \"Chase Paymentech Solutions Merchant Descriptors\" and \"FDC Compass Merchant Descriptors\" in the [Merchant Descriptors Using the SCMP API.] (https://apps.cybersource.com/library/documentation/dev_guides/Merchant_Descriptors_SCMP_API/html/)  #### American Express Direct, Cielo, and Comercio Latino This value is the total number of installments you approved.  #### CyberSource Latin American Processing in Brazil This value is the total number of installments that you approved. The default is 1.  #### All Other Processors This value is used along with _sequence_ to track which payment is being processed.  For example, the second of 5 payments would be passed to CyberSource as _sequence_ = 2 and _totalCount_ = 5.  #### CyberSource through VisaNet For Crediario installment payments, the value for this field corresponds to the following data in the TC 33 capture file*: - Record: CP01 TCR9 - Position: 23-25 - Field: Number of Installments  For installment payments with American Express in Brazil, the value for this field corresponds to the following data in the TC 33 capture file*: - Record: CP07 TCR3 - Position: 7-8 - Field: Number of Installments  For installment payments with Visa in Brazil, the value for this field corresponds to the following data in the TC 33 capture file*: - Record: CP07 TCR1 - Position: 7-8 - Field: Number of Installments  For all other kinds of installment payments, the value for this field corresponds to the following data in the TC 33 capture file*: - Record: CP01 TCR5 - Position: 20-22 - Field: Installment Total Count  **Note** The TC 33 Capture file contains information about the purchases and refunds that a merchant submits to CyberSource. CyberSource through VisaNet creates the TC 33 Capture file at the end of the day and sends it to the merchant’s acquirer, who uses this information to facilitate end-of-day clearing processing with payment card companies. 
    attr_accessor :total_count

    # Date of the first installment payment. Format: YYMMDD. When you do not include this field, CyberSource sends a string of six zeros (000000) to the processor. For details, see \"Installment Payments on CyberSource through VisaNet\" in the [Credit Card Services Using the SCMP API Guide.](https://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html/)  This field is supported only for Crediario installment payments in Brazil on CyberSource through VisaNet.  The value for this field corresponds to the following data in the TC 33 capture file: - Record: CP01 TCR9 - Position: 42-47 - Field: Date of First Installment 
    attr_accessor :first_installment_date

    # Invoice information that you want to provide to the issuer. This value is similar to a tracking number and is the same for all installment payments for one purchase.  This field is supported only for installment payments with Mastercard on CyberSource through VisaNet in Brazil.  For details, see \"Installment Payments on CyberSource through VisaNet\" in the [Credit Card Services Using the SCMP API Guide.](https://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html/)  The value for this field corresponds to the following data in the TC 33 capture file5: - Record: CP07 TCR4 - Position: 51-70 - Field: Purchase Identification 
    attr_accessor :invoice_data

    # Payment plan for the installments.  Possible values: - 0 (default): Regular installment. This value is not allowed for airline transactions. - 1: Installment payment with down payment. - 2: Installment payment without down payment. This value is supported only for airline transactions. - 3: Installment payment; down payment and boarding fee will follow. This value is supported only for airline transactions. - 4: Down payment only; regular installment payment will follow. - 5: Boarding fee only. This value is supported only for airline transactions.  This field is supported only for installment payments with Visa on CyberSource through VisaNet in Brazil.  For details, see \"Installment Payments on CyberSource through VisaNet\" in the [Credit Card Services Using the SCMP API Guide.](https://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html/)  The value for this field corresponds to the following data in the TC 33 capture file5: - Record: CP07 TCR1 - Position: 9 - Field: Merchant Installment Supporting Information 
    attr_accessor :payment_type

    # Indicates whether the authorization request is a Crediario eligibility inquiry.  For details, see \"Installment Payments on CyberSource through VisaNet\" in the [Credit Card Services Using the SCMP API Guide.](https://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html/)  Set the value for this field to `Crediario`.  This field is supported only for Crediario installment payments in Brazil on CyberSource through VisaNet. 
    attr_accessor :eligibility_inquiry

    # Grace period requested by the customer before the first installment payment is due.  When you include this field in a request, you must also include the grace period duration type field.  The value for this field corresponds to the following data in the TC 33 capture file3: Record: CP01 TCR5, Position: 100-101, Field: Mastercard Grace Period Details.  This field is supported only for Mastercard installment payments in Brazil and Greece. 
    attr_accessor :grace_period_duration

    # Unit for the requested grace period duration.  Possible values: - `D`: Days - `W`: Weeks - `M`: Months  The value for this field corresponds to the following data in the TC 33 capture file3: Record: CP01 TCR5, Position: 99, Field: Mastercard Grace Period Details  This field is supported only for Mastercard installment payments in Brazil and Greece on CyberSource through VisaNet. 
    attr_accessor :grace_period_duration_type

    # Amount of the first installment payment. The issuer provides this value when the first installment payment is successful. This field is supported for Mastercard installment payments on CyberSource through VisaNet in all countries except Brazil,Croatia, Georgia, and Greece. The value for this field corresponds to the following data in the TC 33 capture file: - Record: CP01 TCR5 - Position: 23-34 - Field: Amount of Each Installment 
    attr_accessor :first_installment_amount

    # Standing Instruction/Installment validation indicator. - '1': Prevalidated - '2': Not Validated 
    attr_accessor :validation_indicator

    # Standing Instruction/Installment identifier. 
    attr_accessor :identifier

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'amount' => :'amount',
        :'frequency' => :'frequency',
        :'plan_type' => :'planType',
        :'sequence' => :'sequence',
        :'total_amount' => :'totalAmount',
        :'total_count' => :'totalCount',
        :'first_installment_date' => :'firstInstallmentDate',
        :'invoice_data' => :'invoiceData',
        :'payment_type' => :'paymentType',
        :'eligibility_inquiry' => :'eligibilityInquiry',
        :'grace_period_duration' => :'gracePeriodDuration',
        :'grace_period_duration_type' => :'gracePeriodDurationType',
        :'first_installment_amount' => :'firstInstallmentAmount',
        :'validation_indicator' => :'validationIndicator',
        :'identifier' => :'identifier'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'amount' => :'String',
        :'frequency' => :'String',
        :'plan_type' => :'String',
        :'sequence' => :'Integer',
        :'total_amount' => :'String',
        :'total_count' => :'Integer',
        :'first_installment_date' => :'String',
        :'invoice_data' => :'String',
        :'payment_type' => :'String',
        :'eligibility_inquiry' => :'String',
        :'grace_period_duration' => :'String',
        :'grace_period_duration_type' => :'String',
        :'first_installment_amount' => :'String',
        :'validation_indicator' => :'String',
        :'identifier' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.has_key?(:'frequency')
        self.frequency = attributes[:'frequency']
      end

      if attributes.has_key?(:'planType')
        self.plan_type = attributes[:'planType']
      end

      if attributes.has_key?(:'sequence')
        self.sequence = attributes[:'sequence']
      end

      if attributes.has_key?(:'totalAmount')
        self.total_amount = attributes[:'totalAmount']
      end

      if attributes.has_key?(:'totalCount')
        self.total_count = attributes[:'totalCount']
      end

      if attributes.has_key?(:'firstInstallmentDate')
        self.first_installment_date = attributes[:'firstInstallmentDate']
      end

      if attributes.has_key?(:'invoiceData')
        self.invoice_data = attributes[:'invoiceData']
      end

      if attributes.has_key?(:'paymentType')
        self.payment_type = attributes[:'paymentType']
      end

      if attributes.has_key?(:'eligibilityInquiry')
        self.eligibility_inquiry = attributes[:'eligibilityInquiry']
      end

      if attributes.has_key?(:'gracePeriodDuration')
        self.grace_period_duration = attributes[:'gracePeriodDuration']
      end

      if attributes.has_key?(:'gracePeriodDurationType')
        self.grace_period_duration_type = attributes[:'gracePeriodDurationType']
      end

      if attributes.has_key?(:'firstInstallmentAmount')
        self.first_installment_amount = attributes[:'firstInstallmentAmount']
      end

      if attributes.has_key?(:'validationIndicator')
        self.validation_indicator = attributes[:'validationIndicator']
      end

      if attributes.has_key?(:'identifier')
        self.identifier = attributes[:'identifier']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@sequence.nil? && @sequence > 99
        invalid_properties.push('invalid value for "sequence", must be smaller than or equal to 99.')
      end

      if !@total_count.nil? && @total_count > 99
        invalid_properties.push('invalid value for "total_count", must be smaller than or equal to 99.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@sequence.nil? && @sequence > 99
      return false if !@total_count.nil? && @total_count > 99
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] amount Value to be assigned
    def amount=(amount)
      @amount = amount
    end

    # Custom attribute writer method with validation
    # @param [Object] frequency Value to be assigned
    def frequency=(frequency)
      @frequency = frequency
    end

    # Custom attribute writer method with validation
    # @param [Object] plan_type Value to be assigned
    def plan_type=(plan_type)
      @plan_type = plan_type
    end

    # Custom attribute writer method with validation
    # @param [Object] sequence Value to be assigned
    def sequence=(sequence)
      if !sequence.nil? && sequence > 99
        fail ArgumentError, 'invalid value for "sequence", must be smaller than or equal to 99.'
      end

      @sequence = sequence
    end

    # Custom attribute writer method with validation
    # @param [Object] total_amount Value to be assigned
    def total_amount=(total_amount)
      @total_amount = total_amount
    end

    # Custom attribute writer method with validation
    # @param [Object] total_count Value to be assigned
    def total_count=(total_count)
      if !total_count.nil? && total_count > 99
        fail ArgumentError, 'invalid value for "total_count", must be smaller than or equal to 99.'
      end

      @total_count = total_count
    end

    # Custom attribute writer method with validation
    # @param [Object] first_installment_date Value to be assigned
    def first_installment_date=(first_installment_date)
      @first_installment_date = first_installment_date
    end

    # Custom attribute writer method with validation
    # @param [Object] invoice_data Value to be assigned
    def invoice_data=(invoice_data)
      @invoice_data = invoice_data
    end

    # Custom attribute writer method with validation
    # @param [Object] payment_type Value to be assigned
    def payment_type=(payment_type)
      @payment_type = payment_type
    end

    # Custom attribute writer method with validation
    # @param [Object] eligibility_inquiry Value to be assigned
    def eligibility_inquiry=(eligibility_inquiry)
      @eligibility_inquiry = eligibility_inquiry
    end

    # Custom attribute writer method with validation
    # @param [Object] grace_period_duration_type Value to be assigned
    def grace_period_duration_type=(grace_period_duration_type)
      @grace_period_duration_type = grace_period_duration_type
    end

    # Custom attribute writer method with validation
    # @param [Object] first_installment_amount Value to be assigned
    def first_installment_amount=(first_installment_amount)
      @first_installment_amount = first_installment_amount
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          amount == o.amount &&
          frequency == o.frequency &&
          plan_type == o.plan_type &&
          sequence == o.sequence &&
          total_amount == o.total_amount &&
          total_count == o.total_count &&
          first_installment_date == o.first_installment_date &&
          invoice_data == o.invoice_data &&
          payment_type == o.payment_type &&
          eligibility_inquiry == o.eligibility_inquiry &&
          grace_period_duration == o.grace_period_duration &&
          grace_period_duration_type == o.grace_period_duration_type &&
          first_installment_amount == o.first_installment_amount &&
          validation_indicator == o.validation_indicator &&
          identifier == o.identifier
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [amount, frequency, plan_type, sequence, total_amount, total_count, first_installment_date, invoice_data, payment_type, eligibility_inquiry, grace_period_duration, grace_period_duration_type, first_installment_amount, validation_indicator, identifier].hash
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
