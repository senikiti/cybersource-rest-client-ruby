=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class Ptsv2paymentsOrderInformationLineItems
    # Type of product. The value for this field is used to identify the product category (electronic, handling, physical, service, or shipping). The default value is `default`.  If you are performing an authorization transaction (`processingOptions.capture` is set to `false`), and you set this field to a value other than `default` or one of the values related to shipping and/or handling, then `orderInformation.lineItems[].quantity`, `orderInformation.lineItems[].productName`, and `orderInformation.lineItems[].productSku` fields are required.  Optional field.  For details, see the `product_code` field description in the [Credit Card Services Using the SCMP API Guide](https://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html/).  #### Tax Calculation Optional field for U.S., Canadian, international tax, and value added taxes.  The Product Codes for the tax service are located in the Cybersource Tax Codes guide. Contact Customer Support to request the guide. If you don’t send a tax service Product Code in your tax request, product-based rules or exemptions will not be applied and the transaction will default to fully taxable in the locations where you’ve indicated you need to collect tax [by way of nexus, no nexus, or seller registration number fields]. 
    attr_accessor :product_code

    # For an authorization or capture transaction (`processingOptions.capture` is `true` or `false`), this field is required when `orderInformation.lineItems[].productCode` is not `default` or one of the other values that are related to shipping and/or handling.  #### Tax Calculation Optional field for U.S., Canadian, international tax, and value added taxes. 
    attr_accessor :product_name

    # Product identifier code. Also known as the Stock Keeping Unit (SKU) code for the product.  For an authorization or capture transaction (`processingOptions.capture` is set to `true` or `false`), this field is required when `orderInformation.lineItems[].productCode` is not set to **default** or one of the other values that are related to shipping and/or handling.  #### Tax Calculation Optional field for U.S. and Canadian taxes. Not applicable to international and value added taxes. For an authorization or capture transaction (`processingOptions.capture` is set to `true` or `false`), this field is required when `orderInformation.lineItems[].productCode` is not `default` or one of the values related to shipping and/or handling. 
    attr_accessor :product_sku

    # Number of units for this order. Must be a non-negative integer.  The default is `1`. For an authorization or capture transaction (`processingOptions.capture` is set to `true` or `false`), this field is required when `orderInformation.lineItems[].productCode` is not `default` or one of the other values related to shipping and/or handling.  #### Tax Calculation Optional field for U.S., Canadian, international tax, and value added taxes. 
    attr_accessor :quantity

    # Per-item price of the product. This value for this field cannot be negative.  You must include either this field or the request-level field `orderInformation.amountDetails.totalAmount` in your request.  You can include a decimal point (.), but you cannot include any other special characters. The value is truncated to the correct number of decimal places.  #### DCC with a Third-Party Provider Set this field to the converted amount that was returned by the DCC provider. You must include either the 1st line item in the order and this field, or the request-level field `orderInformation.amountDetails.totalAmount` in your request.  #### FDMS South If you accept IDR or CLP currencies, see the entry for FDMS South in the [Merchant Descriptors Using the SCMP API Guide.] (https://apps.cybersource.com/library/documentation/dev_guides/Merchant_Descriptors_SCMP_API/html/)  #### Tax Calculation Required field for U.S., Canadian, international and value added taxes.  #### Zero Amount Authorizations If your processor supports zero amount authorizations, you can set this field to 0 for the authorization to check if the card is lost or stolen.  #### Maximum Field Lengths For GPN and JCN Gateway: Decimal (10) All other processors: Decimal (15) 
    attr_accessor :unit_price

    # Unit of measure, or unit of measure code, for the item. 
    attr_accessor :unit_of_measure

    # Total amount for the item. Normally calculated as the unit price times quantity.  When `orderInformation.lineItems[].productCode` is \"gift_card\", this is the purchase amount total for prepaid gift cards in major units.  Example: 123.45 USD = 123 
    attr_accessor :total_amount

    # Total tax to apply to the product. This value cannot be negative. The tax amount and the offer amount must be in the same currency. The tax amount field is additive.  The following example uses a two-exponent currency such as USD:   1. You include each line item in your request.  ..- 1st line item has amount=10.00, quantity=1, and taxAmount=0.80  ..- 2nd line item has amount=20.00, quantity=1, and taxAmount=1.60  2. The total amount authorized will be 32.40, not 30.00 with 2.40 of tax included.  Optional field.  #### Airlines processing Tax portion of the order amount. This value cannot exceed 99999999999999 (fourteen 9s). Format: English characters only. Optional request field for a line item.  #### Tax Calculation Optional field for U.S., Canadian, international tax, and value added taxes.  Note if you send this field in your tax request, the value in the field will override the tax engine 
    attr_accessor :tax_amount

    # Tax rate applied to the item.  For details, see `tax_rate` field description in the [Level II and Level III Processing Using the SCMP API Guide.](https://apps.cybersource.com/library/documentation/dev_guides/Level_2_3_SCMP_API/html/)  **Visa**: Valid range is 0.01 to 0.99 (1% to 99%, with only whole percentage values accepted; values with additional decimal places will be truncated).  **Mastercard**: Valid range is 0.00001 to 0.99999 (0.001% to 99.999%). 
    attr_accessor :tax_rate

    # Flag to indicate how you handle discount at the line item level.   - 0: no line level discount provided  - 1: tax was calculated on the post-discount line item total  - 2: tax was calculated on the pre-discount line item total  `Note` Visa will inset 0 (zero) if an invalid value is included in this field.  This field relates to the value in the _lineItems[].discountAmount_ field. 
    attr_accessor :tax_applied_after_discount

    # Flag to indicate whether tax is exempted or not included.   - 0: tax not included  - 1: tax included  - 2: transaction is not subject to tax 
    attr_accessor :tax_status_indicator

    # Type of tax being applied to the item.  For possible values, see the processor-specific field descriptions in [Level II and Level III Processing Using the SCMP API.](https://apps.cybersource.com/library/documentation/dev_guides/Level_2_3_SCMP_API/html/):  #### FDC Nashville Global - `alternate_tax_type_applied` - `alternate_tax_type_identifier`  #### Worldpay VAP - `alternate_tax_type_identifier`  #### RBS WorldPay Atlanta - `tax_type_applied`  #### TSYS Acquiring Solutions - `tax_type_applied` - `local_tax_indicator`  #### Chase Paymentech Solutions - `tax_type_applied`  #### Elavon Americas - `local_tax_indicator`  #### FDC Compass - `tax_type_applied`  #### OmniPay Direct - `local_tax_indicator` 
    attr_accessor :tax_type_code

    # Flag that indicates whether the tax amount is included in the Line Item Total.  Possible values:  - **true**  - **false** 
    attr_accessor :amount_includes_tax

    # Flag to indicate whether the purchase is categorized as goods or services. Possible values:   - 00: goods  - 01: services 
    attr_accessor :type_of_supply

    # Commodity code or International description code used to classify the item. Contact your acquirer for a list of codes. 
    attr_accessor :commodity_code

    # Discount applied to the item.
    attr_accessor :discount_amount

    # Flag that indicates whether the amount is discounted.  If you do not provide a value but you set Discount Amount to a value greater than zero, then CyberSource sets this field to **true**.  Possible values:  - **true**  - **false** 
    attr_accessor :discount_applied

    # Rate the item is discounted. Maximum of 2 decimal places.  Example 5.25 (=5.25%) 
    attr_accessor :discount_rate

    # Field to support an invoice number for a transaction. You must specify the number of line items that will include an invoice number. By default, the first line item will include an invoice number field. The invoice number field can be included for up to 10 line items. 
    attr_accessor :invoice_number

    attr_accessor :tax_details

    # Information about the product code used for the line item. Possible values: - `E`: The product code is `electronic_software`. - `P`: The product code is not `electronic_software`.  For details, see the `fulfillmentType` field description in [Business Center Reporting User Guide.] (https://apps.cybersource.com/library/documentation/dev_guides/reporting_and_reconciliation/Reporting_User/html/) 
    attr_accessor :fulfillment_type

    # Weight of the item.  For details, see `weight_amount` field description in [Level II and Level III Processing Using the SCMP API.](https://apps.cybersource.com/library/documentation/dev_guides/Level_2_3_SCMP_API/html/) 
    attr_accessor :weight

    # Type of weight.  Possible values: - B: Billed weight - N: Actual net weight  For details, see `weight_identifier` offer-level field description in [Level II and Level III Processing Using the SCMP API.](https://apps.cybersource.com/library/documentation/dev_guides/Level_2_3_SCMP_API/html/) 
    attr_accessor :weight_identifier

    # Code that specifies the unit of measurement for the weight amount. For example, `OZ` specifies ounce and `LB` specifies pound. The possible values are defined by the ANSI Accredited Standards Committee (ASC).  For details, see `weight_unit_measurement` offer-level field description in [Level II and Level III Processing Using the SCMP API.](https://apps.cybersource.com/library/documentation/dev_guides/Level_2_3_SCMP_API/html/) 
    attr_accessor :weight_unit

    # Code that identifies the value of the corresponding `orderInformation.lineItems[].referenceDataNumber` field.  Possible values: - AN: Client-defined asset code - MG: Manufacturer's part number - PO: Purchase order number - SK: Supplier stock keeping unit number - UP: Universal product code - VC: Supplier catalog number - VP: Vendor part number  This field is a pass-through, which means that CyberSource does not verify the value or modify it in any way before sending it to the processor.  For details, see `reference_data_#_code` field description in [Level II and Level III Processing Using the SCMP API.](https://apps.cybersource.com/library/documentation/dev_guides/Level_2_3_SCMP_API/html/) 
    attr_accessor :reference_data_code

    # Reference number.  The meaning of this value is identified by the value of the corresponding `referenceDataCode` field. See Numbered Elements.  The maximum length for this field depends on the value of the corresponding `referenceDataCode` field: - When the code is `PO`, the maximum length for the reference number is 22. - When the code is `VC`, the maximum length for the reference number is 20. - For all other codes, the maximum length for the reference number is 30.  This field is a pass-through, which means that CyberSource does not verify the value or modify it in any way before sending it to the processor. 
    attr_accessor :reference_data_number

    # Brief description of item.
    attr_accessor :product_description

    # When `orderInformation.lineItems[].productCode` is \"gift_card\", this is the currency used for the gift card purchase.  For details, see `pa_gift_card_currency` field description in [CyberSource Payer Authentication Using the SCMP API.] (https://apps.cybersource.com/library/documentation/dev_guides/Payer_Authentication_SCMP_API/Payer_Authentication_SCMP_API.pdf)  For the possible values, see the [ISO Standard Currency Codes.](http://apps.cybersource.com/library/documentation/sbc/quickref/currencies.pdf) 
    attr_accessor :gift_card_currency

    # Destination to where the item will be shipped. Example: Commercial, Residential, Store 
    attr_accessor :shipping_destination_types

    # This field is only used in DM service.  Determines whether to assign risk to the order if the billing and shipping addresses specify different cities, states, or countries. This field can contain one of the following values: - true: Orders are assigned only slight additional risk if billing and shipping addresses are different. - false: Orders are assigned higher additional risk if billing and shipping addresses are different. 
    attr_accessor :gift

    attr_accessor :passenger

    attr_accessor :allowed_export_countries

    attr_accessor :restricted_export_countries

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'product_code' => :'productCode',
        :'product_name' => :'productName',
        :'product_sku' => :'productSku',
        :'quantity' => :'quantity',
        :'unit_price' => :'unitPrice',
        :'unit_of_measure' => :'unitOfMeasure',
        :'total_amount' => :'totalAmount',
        :'tax_amount' => :'taxAmount',
        :'tax_rate' => :'taxRate',
        :'tax_applied_after_discount' => :'taxAppliedAfterDiscount',
        :'tax_status_indicator' => :'taxStatusIndicator',
        :'tax_type_code' => :'taxTypeCode',
        :'amount_includes_tax' => :'amountIncludesTax',
        :'type_of_supply' => :'typeOfSupply',
        :'commodity_code' => :'commodityCode',
        :'discount_amount' => :'discountAmount',
        :'discount_applied' => :'discountApplied',
        :'discount_rate' => :'discountRate',
        :'invoice_number' => :'invoiceNumber',
        :'tax_details' => :'taxDetails',
        :'fulfillment_type' => :'fulfillmentType',
        :'weight' => :'weight',
        :'weight_identifier' => :'weightIdentifier',
        :'weight_unit' => :'weightUnit',
        :'reference_data_code' => :'referenceDataCode',
        :'reference_data_number' => :'referenceDataNumber',
        :'product_description' => :'productDescription',
        :'gift_card_currency' => :'giftCardCurrency',
        :'shipping_destination_types' => :'shippingDestinationTypes',
        :'gift' => :'gift',
        :'passenger' => :'passenger',
        :'allowed_export_countries' => :'allowedExportCountries',
        :'restricted_export_countries' => :'restrictedExportCountries'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'product_code' => :'String',
        :'product_name' => :'String',
        :'product_sku' => :'String',
        :'quantity' => :'Integer',
        :'unit_price' => :'String',
        :'unit_of_measure' => :'String',
        :'total_amount' => :'String',
        :'tax_amount' => :'String',
        :'tax_rate' => :'String',
        :'tax_applied_after_discount' => :'String',
        :'tax_status_indicator' => :'String',
        :'tax_type_code' => :'String',
        :'amount_includes_tax' => :'BOOLEAN',
        :'type_of_supply' => :'String',
        :'commodity_code' => :'String',
        :'discount_amount' => :'String',
        :'discount_applied' => :'BOOLEAN',
        :'discount_rate' => :'String',
        :'invoice_number' => :'String',
        :'tax_details' => :'Array<Ptsv2paymentsOrderInformationAmountDetailsTaxDetails>',
        :'fulfillment_type' => :'String',
        :'weight' => :'String',
        :'weight_identifier' => :'String',
        :'weight_unit' => :'String',
        :'reference_data_code' => :'String',
        :'reference_data_number' => :'String',
        :'product_description' => :'String',
        :'gift_card_currency' => :'Integer',
        :'shipping_destination_types' => :'String',
        :'gift' => :'BOOLEAN',
        :'passenger' => :'Ptsv2paymentsOrderInformationPassenger',
        :'allowed_export_countries' => :'Array<String>',
        :'restricted_export_countries' => :'Array<String>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'productCode')
        self.product_code = attributes[:'productCode']
      end

      if attributes.has_key?(:'productName')
        self.product_name = attributes[:'productName']
      end

      if attributes.has_key?(:'productSku')
        self.product_sku = attributes[:'productSku']
      end

      if attributes.has_key?(:'quantity')
        self.quantity = attributes[:'quantity']
      end

      if attributes.has_key?(:'unitPrice')
        self.unit_price = attributes[:'unitPrice']
      end

      if attributes.has_key?(:'unitOfMeasure')
        self.unit_of_measure = attributes[:'unitOfMeasure']
      end

      if attributes.has_key?(:'totalAmount')
        self.total_amount = attributes[:'totalAmount']
      end

      if attributes.has_key?(:'taxAmount')
        self.tax_amount = attributes[:'taxAmount']
      end

      if attributes.has_key?(:'taxRate')
        self.tax_rate = attributes[:'taxRate']
      end

      if attributes.has_key?(:'taxAppliedAfterDiscount')
        self.tax_applied_after_discount = attributes[:'taxAppliedAfterDiscount']
      end

      if attributes.has_key?(:'taxStatusIndicator')
        self.tax_status_indicator = attributes[:'taxStatusIndicator']
      end

      if attributes.has_key?(:'taxTypeCode')
        self.tax_type_code = attributes[:'taxTypeCode']
      end

      if attributes.has_key?(:'amountIncludesTax')
        self.amount_includes_tax = attributes[:'amountIncludesTax']
      end

      if attributes.has_key?(:'typeOfSupply')
        self.type_of_supply = attributes[:'typeOfSupply']
      end

      if attributes.has_key?(:'commodityCode')
        self.commodity_code = attributes[:'commodityCode']
      end

      if attributes.has_key?(:'discountAmount')
        self.discount_amount = attributes[:'discountAmount']
      end

      if attributes.has_key?(:'discountApplied')
        self.discount_applied = attributes[:'discountApplied']
      end

      if attributes.has_key?(:'discountRate')
        self.discount_rate = attributes[:'discountRate']
      end

      if attributes.has_key?(:'invoiceNumber')
        self.invoice_number = attributes[:'invoiceNumber']
      end

      if attributes.has_key?(:'taxDetails')
        if (value = attributes[:'taxDetails']).is_a?(Array)
          self.tax_details = value
        end
      end

      if attributes.has_key?(:'fulfillmentType')
        self.fulfillment_type = attributes[:'fulfillmentType']
      end

      if attributes.has_key?(:'weight')
        self.weight = attributes[:'weight']
      end

      if attributes.has_key?(:'weightIdentifier')
        self.weight_identifier = attributes[:'weightIdentifier']
      end

      if attributes.has_key?(:'weightUnit')
        self.weight_unit = attributes[:'weightUnit']
      end

      if attributes.has_key?(:'referenceDataCode')
        self.reference_data_code = attributes[:'referenceDataCode']
      end

      if attributes.has_key?(:'referenceDataNumber')
        self.reference_data_number = attributes[:'referenceDataNumber']
      end

      if attributes.has_key?(:'productDescription')
        self.product_description = attributes[:'productDescription']
      end

      if attributes.has_key?(:'giftCardCurrency')
        self.gift_card_currency = attributes[:'giftCardCurrency']
      end

      if attributes.has_key?(:'shippingDestinationTypes')
        self.shipping_destination_types = attributes[:'shippingDestinationTypes']
      end

      if attributes.has_key?(:'gift')
        self.gift = attributes[:'gift']
      end

      if attributes.has_key?(:'passenger')
        self.passenger = attributes[:'passenger']
      end

      if attributes.has_key?(:'allowedExportCountries')
        if (value = attributes[:'allowedExportCountries']).is_a?(Array)
          self.allowed_export_countries = value
        end
      end

      if attributes.has_key?(:'restrictedExportCountries')
        if (value = attributes[:'restrictedExportCountries']).is_a?(Array)
          self.restricted_export_countries = value
        end
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
    # @param [Object] product_code Value to be assigned
    def product_code=(product_code)
      @product_code = product_code
    end

    # Custom attribute writer method with validation
    # @param [Object] product_name Value to be assigned
    def product_name=(product_name)
      @product_name = product_name
    end

    # Custom attribute writer method with validation
    # @param [Object] product_sku Value to be assigned
    def product_sku=(product_sku)
      @product_sku = product_sku
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
    # @param [Object] unit_of_measure Value to be assigned
    def unit_of_measure=(unit_of_measure)
      @unit_of_measure = unit_of_measure
    end

    # Custom attribute writer method with validation
    # @param [Object] total_amount Value to be assigned
    def total_amount=(total_amount)
      @total_amount = total_amount
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
    # @param [Object] tax_applied_after_discount Value to be assigned
    def tax_applied_after_discount=(tax_applied_after_discount)
      @tax_applied_after_discount = tax_applied_after_discount
    end

    # Custom attribute writer method with validation
    # @param [Object] tax_status_indicator Value to be assigned
    def tax_status_indicator=(tax_status_indicator)
      @tax_status_indicator = tax_status_indicator
    end

    # Custom attribute writer method with validation
    # @param [Object] tax_type_code Value to be assigned
    def tax_type_code=(tax_type_code)
      @tax_type_code = tax_type_code
    end

    # Custom attribute writer method with validation
    # @param [Object] type_of_supply Value to be assigned
    def type_of_supply=(type_of_supply)
      @type_of_supply = type_of_supply
    end

    # Custom attribute writer method with validation
    # @param [Object] commodity_code Value to be assigned
    def commodity_code=(commodity_code)
      @commodity_code = commodity_code
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
    # @param [Object] invoice_number Value to be assigned
    def invoice_number=(invoice_number)
      @invoice_number = invoice_number
    end

    # Custom attribute writer method with validation
    # @param [Object] weight Value to be assigned
    def weight=(weight)
      @weight = weight
    end

    # Custom attribute writer method with validation
    # @param [Object] weight_identifier Value to be assigned
    def weight_identifier=(weight_identifier)
      @weight_identifier = weight_identifier
    end

    # Custom attribute writer method with validation
    # @param [Object] weight_unit Value to be assigned
    def weight_unit=(weight_unit)
      @weight_unit = weight_unit
    end

    # Custom attribute writer method with validation
    # @param [Object] reference_data_code Value to be assigned
    def reference_data_code=(reference_data_code)
      @reference_data_code = reference_data_code
    end

    # Custom attribute writer method with validation
    # @param [Object] reference_data_number Value to be assigned
    def reference_data_number=(reference_data_number)
      @reference_data_number = reference_data_number
    end

    # Custom attribute writer method with validation
    # @param [Object] shipping_destination_types Value to be assigned
    def shipping_destination_types=(shipping_destination_types)
      @shipping_destination_types = shipping_destination_types
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          product_code == o.product_code &&
          product_name == o.product_name &&
          product_sku == o.product_sku &&
          quantity == o.quantity &&
          unit_price == o.unit_price &&
          unit_of_measure == o.unit_of_measure &&
          total_amount == o.total_amount &&
          tax_amount == o.tax_amount &&
          tax_rate == o.tax_rate &&
          tax_applied_after_discount == o.tax_applied_after_discount &&
          tax_status_indicator == o.tax_status_indicator &&
          tax_type_code == o.tax_type_code &&
          amount_includes_tax == o.amount_includes_tax &&
          type_of_supply == o.type_of_supply &&
          commodity_code == o.commodity_code &&
          discount_amount == o.discount_amount &&
          discount_applied == o.discount_applied &&
          discount_rate == o.discount_rate &&
          invoice_number == o.invoice_number &&
          tax_details == o.tax_details &&
          fulfillment_type == o.fulfillment_type &&
          weight == o.weight &&
          weight_identifier == o.weight_identifier &&
          weight_unit == o.weight_unit &&
          reference_data_code == o.reference_data_code &&
          reference_data_number == o.reference_data_number &&
          product_description == o.product_description &&
          gift_card_currency == o.gift_card_currency &&
          shipping_destination_types == o.shipping_destination_types &&
          gift == o.gift &&
          passenger == o.passenger &&
          allowed_export_countries == o.allowed_export_countries &&
          restricted_export_countries == o.restricted_export_countries
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [product_code, product_name, product_sku, quantity, unit_price, unit_of_measure, total_amount, tax_amount, tax_rate, tax_applied_after_discount, tax_status_indicator, tax_type_code, amount_includes_tax, type_of_supply, commodity_code, discount_amount, discount_applied, discount_rate, invoice_number, tax_details, fulfillment_type, weight, weight_identifier, weight_unit, reference_data_code, reference_data_number, product_description, gift_card_currency, shipping_destination_types, gift, passenger, allowed_export_countries, restricted_export_countries].hash
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
