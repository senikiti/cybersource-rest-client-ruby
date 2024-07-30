=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.38
=end

require 'date'

module CyberSource
  # List of the line items from the order, which are included in an invoice.
  class Invoicingv2invoicesOrderInformationLineItems
    # Product identifier code. Also known as the Stock Keeping Unit (SKU) code for the product.  For an authorization or capture transaction (`processingOptions.capture` is set to `true` or `false`), this field is required when `orderInformation.lineItems[].productCode` is not set to **default** or one of the other values that are related to shipping and/or handling.  #### Tax Calculation Optional field for U.S. and Canadian taxes. Not applicable to international and value added taxes. For an authorization or capture transaction (`processingOptions.capture` is set to `true` or `false`), this field is required when `orderInformation.lineItems[].productCode` is not `default` or one of the values related to shipping and/or handling. 
    attr_accessor :product_sku

    # For an authorization or capture transaction (`processingOptions.capture` is `true` or `false`), this field is required when `orderInformation.lineItems[].productCode` is not `default` or one of the other values that are related to shipping and/or handling.  #### Tax Calculation Optional field for U.S., Canadian, international tax, and value added taxes. 
    attr_accessor :product_name

    # Number of units for this order. Must be a non-negative integer.  The default is `1`. For an authorization or capture transaction (`processingOptions.capture` is set to `true` or `false`), this field is required when `orderInformation.lineItems[].productCode` is not `default` or one of the other values related to shipping and/or handling.  #### Tax Calculation Optional field for U.S., Canadian, international tax, and value added taxes. 
    attr_accessor :quantity

    # Per-item price of the product. This value for this field cannot be negative.  You must include either this field or the request-level field `orderInformation.amountDetails.totalAmount` in your request.  You can include a decimal point (.), but you cannot include any other special characters. The value is truncated to the correct number of decimal places.  #### DCC with a Third-Party Provider Set this field to the converted amount that was returned by the DCC provider. You must include either the 1st line item in the order and this field, or the request-level field `orderInformation.amountDetails.totalAmount` in your request.  #### Tax Calculation Required field for U.S., Canadian, international and value added taxes.  #### Zero Amount Authorizations If your processor supports zero amount authorizations, you can set this field to 0 for the authorization to check if the card is lost or stolen.  #### Maximum Field Lengths For GPN and JCN Gateway: Decimal (10) All other processors: Decimal (15) 
    attr_accessor :unit_price

    # Discount applied to the item.
    attr_accessor :discount_amount

    # Rate the item is discounted. Maximum of 2 decimal places.  Example 5.25 (=5.25%) 
    attr_accessor :discount_rate

    # Total tax to apply to the product. This value cannot be negative. The tax amount and the offer amount must be in the same currency. The tax amount field is additive.  The following example uses a two-exponent currency such as USD:   1. You include each line item in your request.  ..- 1st line item has amount=10.00, quantity=1, and taxAmount=0.80  ..- 2nd line item has amount=20.00, quantity=1, and taxAmount=1.60  2. The total amount authorized will be 32.40, not 30.00 with 2.40 of tax included.  Optional field.  #### Airlines processing Tax portion of the order amount. This value cannot exceed 99999999999999 (fourteen 9s). Format: English characters only. Optional request field for a line item.  #### Tax Calculation Optional field for U.S., Canadian, international tax, and value added taxes.  Note if you send this field in your tax request, the value in the field will override the tax engine 
    attr_accessor :tax_amount

    # Tax rate applied to the item.  **Visa**: Valid range is 0.01 to 0.99 (1% to 99%, with only whole percentage values accepted; values with additional decimal places will be truncated).  **Mastercard**: Valid range is 0.00001 to 0.99999 (0.001% to 99.999%). 
    attr_accessor :tax_rate

    # Total amount for the item. Normally calculated as the unit price times quantity.  When `orderInformation.lineItems[].productCode` is \"gift_card\", this is the purchase amount total for prepaid gift cards in major units.  Example: 123.45 USD = 123 
    attr_accessor :total_amount

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'product_sku' => :'productSku',
        :'product_name' => :'productName',
        :'quantity' => :'quantity',
        :'unit_price' => :'unitPrice',
        :'discount_amount' => :'discountAmount',
        :'discount_rate' => :'discountRate',
        :'tax_amount' => :'taxAmount',
        :'tax_rate' => :'taxRate',
        :'total_amount' => :'totalAmount'
      }
    end

    # Attribute mapping from JSON key to ruby-style variable name.
    def self.json_map
      {
        :'product_sku' => :'product_sku',
        :'product_name' => :'product_name',
        :'quantity' => :'quantity',
        :'unit_price' => :'unit_price',
        :'discount_amount' => :'discount_amount',
        :'discount_rate' => :'discount_rate',
        :'tax_amount' => :'tax_amount',
        :'tax_rate' => :'tax_rate',
        :'total_amount' => :'total_amount'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'product_sku' => :'String',
        :'product_name' => :'String',
        :'quantity' => :'Integer',
        :'unit_price' => :'String',
        :'discount_amount' => :'String',
        :'discount_rate' => :'String',
        :'tax_amount' => :'String',
        :'tax_rate' => :'String',
        :'total_amount' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'productSku')
        self.product_sku = attributes[:'productSku']
      end

      if attributes.has_key?(:'productName')
        self.product_name = attributes[:'productName']
      end

      if attributes.has_key?(:'quantity')
        self.quantity = attributes[:'quantity']
      end

      if attributes.has_key?(:'unitPrice')
        self.unit_price = attributes[:'unitPrice']
      end

      if attributes.has_key?(:'discountAmount')
        self.discount_amount = attributes[:'discountAmount']
      end

      if attributes.has_key?(:'discountRate')
        self.discount_rate = attributes[:'discountRate']
      end

      if attributes.has_key?(:'taxAmount')
        self.tax_amount = attributes[:'taxAmount']
      end

      if attributes.has_key?(:'taxRate')
        self.tax_rate = attributes[:'taxRate']
      end

      if attributes.has_key?(:'totalAmount')
        self.total_amount = attributes[:'totalAmount']
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
    # @param [Object] product_sku Value to be assigned
    def product_sku=(product_sku)
      @product_sku = product_sku
    end

    # Custom attribute writer method with validation
    # @param [Object] product_name Value to be assigned
    def product_name=(product_name)
      @product_name = product_name
    end

    # Custom attribute writer method with validation
    # @param [Object] quantity Value to be assigned
    def quantity=(quantity)
      @quantity = quantity
    end

    # Custom attribute writer method with validation
    # @param [Object] unit_price Value to be assigned
    def unit_price=(unit_price)
      @unit_price = unit_price
    end

    # Custom attribute writer method with validation
    # @param [Object] discount_amount Value to be assigned
    def discount_amount=(discount_amount)
      @discount_amount = discount_amount
    end

    # Custom attribute writer method with validation
    # @param [Object] discount_rate Value to be assigned
    def discount_rate=(discount_rate)
      @discount_rate = discount_rate
    end

    # Custom attribute writer method with validation
    # @param [Object] tax_amount Value to be assigned
    def tax_amount=(tax_amount)
      @tax_amount = tax_amount
    end

    # Custom attribute writer method with validation
    # @param [Object] tax_rate Value to be assigned
    def tax_rate=(tax_rate)
      @tax_rate = tax_rate
    end

    # Custom attribute writer method with validation
    # @param [Object] total_amount Value to be assigned
    def total_amount=(total_amount)
      @total_amount = total_amount
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          product_sku == o.product_sku &&
          product_name == o.product_name &&
          quantity == o.quantity &&
          unit_price == o.unit_price &&
          discount_amount == o.discount_amount &&
          discount_rate == o.discount_rate &&
          tax_amount == o.tax_amount &&
          tax_rate == o.tax_rate &&
          total_amount == o.total_amount
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [product_sku, product_name, quantity, unit_price, discount_amount, discount_rate, tax_amount, tax_rate, total_amount].hash
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
