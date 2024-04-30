=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.38
=end

require 'date'

module CyberSource
  class Ptsv2paymentsTravelInformationLodging
    # Date on which the guest checked in. In the case of a no-show or a reservation, the scheduled arrival date. Format: `MMDDYY`. For best interchange rates, make sure it is a valid date. 
    attr_accessor :check_in_date

    # Date on which the guest checked out. Format: `MMDDYY`. For best interchange rates, make sure it is a valid date. 
    attr_accessor :check_out_date

    # The object containing the number of nights and the daily rate that applies for that no of nights. 
    attr_accessor :room

    # Smoking preference of the guest. Possible values: - `Y`: smoking room - `N`: non-smoking room 
    attr_accessor :smoking_preference

    # Number of rooms booked by the cardholder. 
    attr_accessor :number_of_rooms

    # Number of guests staying in the room. 
    attr_accessor :number_of_guests

    # Type of room, such as queen, king, or two doubles. 
    attr_accessor :room_bed_type

    # Type of tax, such as tourist or hotel. 
    attr_accessor :room_tax_type

    # Type of rate, such as corporate or senior citizen. 
    attr_accessor :room_rate_type

    # Name of the guest under which the room is reserved. 
    attr_accessor :guest_name

    # Your toll-free customer service phone number. 
    attr_accessor :customer_service_phone_number

    # Code assigned to a business. You can use this code to identify corporate rates and discounts for guests. 
    attr_accessor :corporate_client_code

    # Amount of an additional coupon or discount. 
    attr_accessor :additional_discount_amount

    # Location of room, such as lake view or ocean view. 
    attr_accessor :room_location

    # Code that identifies special circumstances. Possible values: - `1`: lodging (default) - `2`: no show reservation - `3`: advanced deposit 
    attr_accessor :special_program_code

    # Total tax amount. 
    attr_accessor :total_tax_amount

    # Prepaid amount, such as a deposit. 
    attr_accessor :prepaid_cost

    # Cost for all food and beverages. 
    attr_accessor :food_and_beverage_cost

    # Total tax for the room. 
    attr_accessor :room_tax_amount

    # Adjusted amount charged in addition to the reservation amount after the stay is complete. 
    attr_accessor :adjustment_amount

    # Cost of telephone services. 
    attr_accessor :phone_cost

    # Cost of restaurant purchases 
    attr_accessor :restaurant_cost

    # Cost of room service. 
    attr_accessor :room_service_cost

    # Cost of mini-bar purchases. 
    attr_accessor :mini_bar_cost

    # Cost of laundry services. 
    attr_accessor :laundry_cost

    # Miscellaneous costs. 
    attr_accessor :miscellaneous_cost

    # Cost of gift shop purchases. 
    attr_accessor :gift_shop_cost

    # Cost of movies. 
    attr_accessor :movie_cost

    # Cost of health club services. 
    attr_accessor :health_club_cost

    # Cost of valet parking services. 
    attr_accessor :valet_parking_cost

    # Cost of the cash that was disbursed plus any associated service fees 
    attr_accessor :cash_disbursement_cost

    # Cost of non-room purchases, such as meals and gifts. 
    attr_accessor :non_room_cost

    # Cost of business center services. 
    attr_accessor :business_center_cost

    # Cost of lounge and bar purchases. 
    attr_accessor :lounge_bar_cost

    # Cost of transportation services. 
    attr_accessor :transportation_cost

    # Gratuity. 
    attr_accessor :gratuity_amount

    # Cost of conference room services. 
    attr_accessor :conference_room_cost

    # Cost of audio visual services. 
    attr_accessor :audio_visual_cost

    # Cost of banquet services. 
    attr_accessor :banquest_cost

    # Tax on non-room purchases. 
    attr_accessor :non_room_tax_amount

    # Service fee for early departure. 
    attr_accessor :early_check_out_cost

    # Cost of Internet access. 
    attr_accessor :internet_access_cost

    # Name of the hotel for which the reservation is for. Mandatory in case the merchant's business type is Hotel. 
    attr_accessor :name

    # The name of the hotel for which the reservation was made. 
    attr_accessor :hotel_name

    # The date of the check-in in GMT+8 offset. 
    attr_accessor :check_in_date_time

    # The date of the check-out in GMT+8 offset. 
    attr_accessor :check_out_date_time

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'check_in_date' => :'checkInDate',
        :'check_out_date' => :'checkOutDate',
        :'room' => :'room',
        :'smoking_preference' => :'smokingPreference',
        :'number_of_rooms' => :'numberOfRooms',
        :'number_of_guests' => :'numberOfGuests',
        :'room_bed_type' => :'roomBedType',
        :'room_tax_type' => :'roomTaxType',
        :'room_rate_type' => :'roomRateType',
        :'guest_name' => :'guestName',
        :'customer_service_phone_number' => :'customerServicePhoneNumber',
        :'corporate_client_code' => :'corporateClientCode',
        :'additional_discount_amount' => :'additionalDiscountAmount',
        :'room_location' => :'roomLocation',
        :'special_program_code' => :'specialProgramCode',
        :'total_tax_amount' => :'totalTaxAmount',
        :'prepaid_cost' => :'prepaidCost',
        :'food_and_beverage_cost' => :'foodAndBeverageCost',
        :'room_tax_amount' => :'roomTaxAmount',
        :'adjustment_amount' => :'adjustmentAmount',
        :'phone_cost' => :'phoneCost',
        :'restaurant_cost' => :'restaurantCost',
        :'room_service_cost' => :'roomServiceCost',
        :'mini_bar_cost' => :'miniBarCost',
        :'laundry_cost' => :'laundryCost',
        :'miscellaneous_cost' => :'miscellaneousCost',
        :'gift_shop_cost' => :'giftShopCost',
        :'movie_cost' => :'movieCost',
        :'health_club_cost' => :'healthClubCost',
        :'valet_parking_cost' => :'valetParkingCost',
        :'cash_disbursement_cost' => :'cashDisbursementCost',
        :'non_room_cost' => :'nonRoomCost',
        :'business_center_cost' => :'businessCenterCost',
        :'lounge_bar_cost' => :'loungeBarCost',
        :'transportation_cost' => :'transportationCost',
        :'gratuity_amount' => :'gratuityAmount',
        :'conference_room_cost' => :'conferenceRoomCost',
        :'audio_visual_cost' => :'audioVisualCost',
        :'banquest_cost' => :'banquestCost',
        :'non_room_tax_amount' => :'nonRoomTaxAmount',
        :'early_check_out_cost' => :'earlyCheckOutCost',
        :'internet_access_cost' => :'internetAccessCost',
        :'name' => :'name',
        :'hotel_name' => :'hotelName',
        :'check_in_date_time' => :'checkInDateTime',
        :'check_out_date_time' => :'checkOutDateTime'
      }
    end

    # Attribute mapping from JSON key to ruby-style variable name.
    def self.json_map
      {
        :'check_in_date' => :'check_in_date',
        :'check_out_date' => :'check_out_date',
        :'room' => :'room',
        :'smoking_preference' => :'smoking_preference',
        :'number_of_rooms' => :'number_of_rooms',
        :'number_of_guests' => :'number_of_guests',
        :'room_bed_type' => :'room_bed_type',
        :'room_tax_type' => :'room_tax_type',
        :'room_rate_type' => :'room_rate_type',
        :'guest_name' => :'guest_name',
        :'customer_service_phone_number' => :'customer_service_phone_number',
        :'corporate_client_code' => :'corporate_client_code',
        :'additional_discount_amount' => :'additional_discount_amount',
        :'room_location' => :'room_location',
        :'special_program_code' => :'special_program_code',
        :'total_tax_amount' => :'total_tax_amount',
        :'prepaid_cost' => :'prepaid_cost',
        :'food_and_beverage_cost' => :'food_and_beverage_cost',
        :'room_tax_amount' => :'room_tax_amount',
        :'adjustment_amount' => :'adjustment_amount',
        :'phone_cost' => :'phone_cost',
        :'restaurant_cost' => :'restaurant_cost',
        :'room_service_cost' => :'room_service_cost',
        :'mini_bar_cost' => :'mini_bar_cost',
        :'laundry_cost' => :'laundry_cost',
        :'miscellaneous_cost' => :'miscellaneous_cost',
        :'gift_shop_cost' => :'gift_shop_cost',
        :'movie_cost' => :'movie_cost',
        :'health_club_cost' => :'health_club_cost',
        :'valet_parking_cost' => :'valet_parking_cost',
        :'cash_disbursement_cost' => :'cash_disbursement_cost',
        :'non_room_cost' => :'non_room_cost',
        :'business_center_cost' => :'business_center_cost',
        :'lounge_bar_cost' => :'lounge_bar_cost',
        :'transportation_cost' => :'transportation_cost',
        :'gratuity_amount' => :'gratuity_amount',
        :'conference_room_cost' => :'conference_room_cost',
        :'audio_visual_cost' => :'audio_visual_cost',
        :'banquest_cost' => :'banquest_cost',
        :'non_room_tax_amount' => :'non_room_tax_amount',
        :'early_check_out_cost' => :'early_check_out_cost',
        :'internet_access_cost' => :'internet_access_cost',
        :'name' => :'name',
        :'hotel_name' => :'hotel_name',
        :'check_in_date_time' => :'check_in_date_time',
        :'check_out_date_time' => :'check_out_date_time'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'check_in_date' => :'String',
        :'check_out_date' => :'String',
        :'room' => :'Array<Ptsv2paymentsTravelInformationLodgingRoom>',
        :'smoking_preference' => :'String',
        :'number_of_rooms' => :'Integer',
        :'number_of_guests' => :'Integer',
        :'room_bed_type' => :'String',
        :'room_tax_type' => :'String',
        :'room_rate_type' => :'String',
        :'guest_name' => :'String',
        :'customer_service_phone_number' => :'String',
        :'corporate_client_code' => :'String',
        :'additional_discount_amount' => :'String',
        :'room_location' => :'String',
        :'special_program_code' => :'String',
        :'total_tax_amount' => :'String',
        :'prepaid_cost' => :'String',
        :'food_and_beverage_cost' => :'String',
        :'room_tax_amount' => :'String',
        :'adjustment_amount' => :'String',
        :'phone_cost' => :'String',
        :'restaurant_cost' => :'String',
        :'room_service_cost' => :'String',
        :'mini_bar_cost' => :'String',
        :'laundry_cost' => :'String',
        :'miscellaneous_cost' => :'String',
        :'gift_shop_cost' => :'String',
        :'movie_cost' => :'String',
        :'health_club_cost' => :'String',
        :'valet_parking_cost' => :'String',
        :'cash_disbursement_cost' => :'String',
        :'non_room_cost' => :'String',
        :'business_center_cost' => :'String',
        :'lounge_bar_cost' => :'String',
        :'transportation_cost' => :'String',
        :'gratuity_amount' => :'String',
        :'conference_room_cost' => :'String',
        :'audio_visual_cost' => :'String',
        :'banquest_cost' => :'String',
        :'non_room_tax_amount' => :'String',
        :'early_check_out_cost' => :'String',
        :'internet_access_cost' => :'String',
        :'name' => :'String',
        :'hotel_name' => :'String',
        :'check_in_date_time' => :'String',
        :'check_out_date_time' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'checkInDate')
        self.check_in_date = attributes[:'checkInDate']
      end

      if attributes.has_key?(:'checkOutDate')
        self.check_out_date = attributes[:'checkOutDate']
      end

      if attributes.has_key?(:'room')
        if (value = attributes[:'room']).is_a?(Array)
          self.room = value
        end
      end

      if attributes.has_key?(:'smokingPreference')
        self.smoking_preference = attributes[:'smokingPreference']
      end

      if attributes.has_key?(:'numberOfRooms')
        self.number_of_rooms = attributes[:'numberOfRooms']
      end

      if attributes.has_key?(:'numberOfGuests')
        self.number_of_guests = attributes[:'numberOfGuests']
      end

      if attributes.has_key?(:'roomBedType')
        self.room_bed_type = attributes[:'roomBedType']
      end

      if attributes.has_key?(:'roomTaxType')
        self.room_tax_type = attributes[:'roomTaxType']
      end

      if attributes.has_key?(:'roomRateType')
        self.room_rate_type = attributes[:'roomRateType']
      end

      if attributes.has_key?(:'guestName')
        self.guest_name = attributes[:'guestName']
      end

      if attributes.has_key?(:'customerServicePhoneNumber')
        self.customer_service_phone_number = attributes[:'customerServicePhoneNumber']
      end

      if attributes.has_key?(:'corporateClientCode')
        self.corporate_client_code = attributes[:'corporateClientCode']
      end

      if attributes.has_key?(:'additionalDiscountAmount')
        self.additional_discount_amount = attributes[:'additionalDiscountAmount']
      end

      if attributes.has_key?(:'roomLocation')
        self.room_location = attributes[:'roomLocation']
      end

      if attributes.has_key?(:'specialProgramCode')
        self.special_program_code = attributes[:'specialProgramCode']
      end

      if attributes.has_key?(:'totalTaxAmount')
        self.total_tax_amount = attributes[:'totalTaxAmount']
      end

      if attributes.has_key?(:'prepaidCost')
        self.prepaid_cost = attributes[:'prepaidCost']
      end

      if attributes.has_key?(:'foodAndBeverageCost')
        self.food_and_beverage_cost = attributes[:'foodAndBeverageCost']
      end

      if attributes.has_key?(:'roomTaxAmount')
        self.room_tax_amount = attributes[:'roomTaxAmount']
      end

      if attributes.has_key?(:'adjustmentAmount')
        self.adjustment_amount = attributes[:'adjustmentAmount']
      end

      if attributes.has_key?(:'phoneCost')
        self.phone_cost = attributes[:'phoneCost']
      end

      if attributes.has_key?(:'restaurantCost')
        self.restaurant_cost = attributes[:'restaurantCost']
      end

      if attributes.has_key?(:'roomServiceCost')
        self.room_service_cost = attributes[:'roomServiceCost']
      end

      if attributes.has_key?(:'miniBarCost')
        self.mini_bar_cost = attributes[:'miniBarCost']
      end

      if attributes.has_key?(:'laundryCost')
        self.laundry_cost = attributes[:'laundryCost']
      end

      if attributes.has_key?(:'miscellaneousCost')
        self.miscellaneous_cost = attributes[:'miscellaneousCost']
      end

      if attributes.has_key?(:'giftShopCost')
        self.gift_shop_cost = attributes[:'giftShopCost']
      end

      if attributes.has_key?(:'movieCost')
        self.movie_cost = attributes[:'movieCost']
      end

      if attributes.has_key?(:'healthClubCost')
        self.health_club_cost = attributes[:'healthClubCost']
      end

      if attributes.has_key?(:'valetParkingCost')
        self.valet_parking_cost = attributes[:'valetParkingCost']
      end

      if attributes.has_key?(:'cashDisbursementCost')
        self.cash_disbursement_cost = attributes[:'cashDisbursementCost']
      end

      if attributes.has_key?(:'nonRoomCost')
        self.non_room_cost = attributes[:'nonRoomCost']
      end

      if attributes.has_key?(:'businessCenterCost')
        self.business_center_cost = attributes[:'businessCenterCost']
      end

      if attributes.has_key?(:'loungeBarCost')
        self.lounge_bar_cost = attributes[:'loungeBarCost']
      end

      if attributes.has_key?(:'transportationCost')
        self.transportation_cost = attributes[:'transportationCost']
      end

      if attributes.has_key?(:'gratuityAmount')
        self.gratuity_amount = attributes[:'gratuityAmount']
      end

      if attributes.has_key?(:'conferenceRoomCost')
        self.conference_room_cost = attributes[:'conferenceRoomCost']
      end

      if attributes.has_key?(:'audioVisualCost')
        self.audio_visual_cost = attributes[:'audioVisualCost']
      end

      if attributes.has_key?(:'banquestCost')
        self.banquest_cost = attributes[:'banquestCost']
      end

      if attributes.has_key?(:'nonRoomTaxAmount')
        self.non_room_tax_amount = attributes[:'nonRoomTaxAmount']
      end

      if attributes.has_key?(:'earlyCheckOutCost')
        self.early_check_out_cost = attributes[:'earlyCheckOutCost']
      end

      if attributes.has_key?(:'internetAccessCost')
        self.internet_access_cost = attributes[:'internetAccessCost']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'hotelName')
        self.hotel_name = attributes[:'hotelName']
      end

      if attributes.has_key?(:'checkInDateTime')
        self.check_in_date_time = attributes[:'checkInDateTime']
      end

      if attributes.has_key?(:'checkOutDateTime')
        self.check_out_date_time = attributes[:'checkOutDateTime']
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
    # @param [Object] check_in_date Value to be assigned
    def check_in_date=(check_in_date)
      @check_in_date = check_in_date
    end

    # Custom attribute writer method with validation
    # @param [Object] check_out_date Value to be assigned
    def check_out_date=(check_out_date)
      @check_out_date = check_out_date
    end

    # Custom attribute writer method with validation
    # @param [Object] smoking_preference Value to be assigned
    def smoking_preference=(smoking_preference)
      @smoking_preference = smoking_preference
    end

    # Custom attribute writer method with validation
    # @param [Object] number_of_rooms Value to be assigned
    def number_of_rooms=(number_of_rooms)
      @number_of_rooms = number_of_rooms
    end

    # Custom attribute writer method with validation
    # @param [Object] number_of_guests Value to be assigned
    def number_of_guests=(number_of_guests)
      @number_of_guests = number_of_guests
    end

    # Custom attribute writer method with validation
    # @param [Object] room_bed_type Value to be assigned
    def room_bed_type=(room_bed_type)
      @room_bed_type = room_bed_type
    end

    # Custom attribute writer method with validation
    # @param [Object] room_tax_type Value to be assigned
    def room_tax_type=(room_tax_type)
      @room_tax_type = room_tax_type
    end

    # Custom attribute writer method with validation
    # @param [Object] room_rate_type Value to be assigned
    def room_rate_type=(room_rate_type)
      @room_rate_type = room_rate_type
    end

    # Custom attribute writer method with validation
    # @param [Object] guest_name Value to be assigned
    def guest_name=(guest_name)
      @guest_name = guest_name
    end

    # Custom attribute writer method with validation
    # @param [Object] customer_service_phone_number Value to be assigned
    def customer_service_phone_number=(customer_service_phone_number)
      @customer_service_phone_number = customer_service_phone_number
    end

    # Custom attribute writer method with validation
    # @param [Object] corporate_client_code Value to be assigned
    def corporate_client_code=(corporate_client_code)
      @corporate_client_code = corporate_client_code
    end

    # Custom attribute writer method with validation
    # @param [Object] additional_discount_amount Value to be assigned
    def additional_discount_amount=(additional_discount_amount)
      @additional_discount_amount = additional_discount_amount
    end

    # Custom attribute writer method with validation
    # @param [Object] room_location Value to be assigned
    def room_location=(room_location)
      @room_location = room_location
    end

    # Custom attribute writer method with validation
    # @param [Object] special_program_code Value to be assigned
    def special_program_code=(special_program_code)
      @special_program_code = special_program_code
    end

    # Custom attribute writer method with validation
    # @param [Object] total_tax_amount Value to be assigned
    def total_tax_amount=(total_tax_amount)
      @total_tax_amount = total_tax_amount
    end

    # Custom attribute writer method with validation
    # @param [Object] prepaid_cost Value to be assigned
    def prepaid_cost=(prepaid_cost)
      @prepaid_cost = prepaid_cost
    end

    # Custom attribute writer method with validation
    # @param [Object] food_and_beverage_cost Value to be assigned
    def food_and_beverage_cost=(food_and_beverage_cost)
      @food_and_beverage_cost = food_and_beverage_cost
    end

    # Custom attribute writer method with validation
    # @param [Object] room_tax_amount Value to be assigned
    def room_tax_amount=(room_tax_amount)
      @room_tax_amount = room_tax_amount
    end

    # Custom attribute writer method with validation
    # @param [Object] adjustment_amount Value to be assigned
    def adjustment_amount=(adjustment_amount)
      @adjustment_amount = adjustment_amount
    end

    # Custom attribute writer method with validation
    # @param [Object] phone_cost Value to be assigned
    def phone_cost=(phone_cost)
      @phone_cost = phone_cost
    end

    # Custom attribute writer method with validation
    # @param [Object] restaurant_cost Value to be assigned
    def restaurant_cost=(restaurant_cost)
      @restaurant_cost = restaurant_cost
    end

    # Custom attribute writer method with validation
    # @param [Object] room_service_cost Value to be assigned
    def room_service_cost=(room_service_cost)
      @room_service_cost = room_service_cost
    end

    # Custom attribute writer method with validation
    # @param [Object] mini_bar_cost Value to be assigned
    def mini_bar_cost=(mini_bar_cost)
      @mini_bar_cost = mini_bar_cost
    end

    # Custom attribute writer method with validation
    # @param [Object] laundry_cost Value to be assigned
    def laundry_cost=(laundry_cost)
      @laundry_cost = laundry_cost
    end

    # Custom attribute writer method with validation
    # @param [Object] miscellaneous_cost Value to be assigned
    def miscellaneous_cost=(miscellaneous_cost)
      @miscellaneous_cost = miscellaneous_cost
    end

    # Custom attribute writer method with validation
    # @param [Object] gift_shop_cost Value to be assigned
    def gift_shop_cost=(gift_shop_cost)
      @gift_shop_cost = gift_shop_cost
    end

    # Custom attribute writer method with validation
    # @param [Object] movie_cost Value to be assigned
    def movie_cost=(movie_cost)
      @movie_cost = movie_cost
    end

    # Custom attribute writer method with validation
    # @param [Object] health_club_cost Value to be assigned
    def health_club_cost=(health_club_cost)
      @health_club_cost = health_club_cost
    end

    # Custom attribute writer method with validation
    # @param [Object] valet_parking_cost Value to be assigned
    def valet_parking_cost=(valet_parking_cost)
      @valet_parking_cost = valet_parking_cost
    end

    # Custom attribute writer method with validation
    # @param [Object] cash_disbursement_cost Value to be assigned
    def cash_disbursement_cost=(cash_disbursement_cost)
      @cash_disbursement_cost = cash_disbursement_cost
    end

    # Custom attribute writer method with validation
    # @param [Object] non_room_cost Value to be assigned
    def non_room_cost=(non_room_cost)
      @non_room_cost = non_room_cost
    end

    # Custom attribute writer method with validation
    # @param [Object] business_center_cost Value to be assigned
    def business_center_cost=(business_center_cost)
      @business_center_cost = business_center_cost
    end

    # Custom attribute writer method with validation
    # @param [Object] lounge_bar_cost Value to be assigned
    def lounge_bar_cost=(lounge_bar_cost)
      @lounge_bar_cost = lounge_bar_cost
    end

    # Custom attribute writer method with validation
    # @param [Object] transportation_cost Value to be assigned
    def transportation_cost=(transportation_cost)
      @transportation_cost = transportation_cost
    end

    # Custom attribute writer method with validation
    # @param [Object] gratuity_amount Value to be assigned
    def gratuity_amount=(gratuity_amount)
      @gratuity_amount = gratuity_amount
    end

    # Custom attribute writer method with validation
    # @param [Object] conference_room_cost Value to be assigned
    def conference_room_cost=(conference_room_cost)
      @conference_room_cost = conference_room_cost
    end

    # Custom attribute writer method with validation
    # @param [Object] audio_visual_cost Value to be assigned
    def audio_visual_cost=(audio_visual_cost)
      @audio_visual_cost = audio_visual_cost
    end

    # Custom attribute writer method with validation
    # @param [Object] banquest_cost Value to be assigned
    def banquest_cost=(banquest_cost)
      @banquest_cost = banquest_cost
    end

    # Custom attribute writer method with validation
    # @param [Object] non_room_tax_amount Value to be assigned
    def non_room_tax_amount=(non_room_tax_amount)
      @non_room_tax_amount = non_room_tax_amount
    end

    # Custom attribute writer method with validation
    # @param [Object] early_check_out_cost Value to be assigned
    def early_check_out_cost=(early_check_out_cost)
      @early_check_out_cost = early_check_out_cost
    end

    # Custom attribute writer method with validation
    # @param [Object] internet_access_cost Value to be assigned
    def internet_access_cost=(internet_access_cost)
      @internet_access_cost = internet_access_cost
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      @name = name
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          check_in_date == o.check_in_date &&
          check_out_date == o.check_out_date &&
          room == o.room &&
          smoking_preference == o.smoking_preference &&
          number_of_rooms == o.number_of_rooms &&
          number_of_guests == o.number_of_guests &&
          room_bed_type == o.room_bed_type &&
          room_tax_type == o.room_tax_type &&
          room_rate_type == o.room_rate_type &&
          guest_name == o.guest_name &&
          customer_service_phone_number == o.customer_service_phone_number &&
          corporate_client_code == o.corporate_client_code &&
          additional_discount_amount == o.additional_discount_amount &&
          room_location == o.room_location &&
          special_program_code == o.special_program_code &&
          total_tax_amount == o.total_tax_amount &&
          prepaid_cost == o.prepaid_cost &&
          food_and_beverage_cost == o.food_and_beverage_cost &&
          room_tax_amount == o.room_tax_amount &&
          adjustment_amount == o.adjustment_amount &&
          phone_cost == o.phone_cost &&
          restaurant_cost == o.restaurant_cost &&
          room_service_cost == o.room_service_cost &&
          mini_bar_cost == o.mini_bar_cost &&
          laundry_cost == o.laundry_cost &&
          miscellaneous_cost == o.miscellaneous_cost &&
          gift_shop_cost == o.gift_shop_cost &&
          movie_cost == o.movie_cost &&
          health_club_cost == o.health_club_cost &&
          valet_parking_cost == o.valet_parking_cost &&
          cash_disbursement_cost == o.cash_disbursement_cost &&
          non_room_cost == o.non_room_cost &&
          business_center_cost == o.business_center_cost &&
          lounge_bar_cost == o.lounge_bar_cost &&
          transportation_cost == o.transportation_cost &&
          gratuity_amount == o.gratuity_amount &&
          conference_room_cost == o.conference_room_cost &&
          audio_visual_cost == o.audio_visual_cost &&
          banquest_cost == o.banquest_cost &&
          non_room_tax_amount == o.non_room_tax_amount &&
          early_check_out_cost == o.early_check_out_cost &&
          internet_access_cost == o.internet_access_cost &&
          name == o.name &&
          hotel_name == o.hotel_name &&
          check_in_date_time == o.check_in_date_time &&
          check_out_date_time == o.check_out_date_time
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [check_in_date, check_out_date, room, smoking_preference, number_of_rooms, number_of_guests, room_bed_type, room_tax_type, room_rate_type, guest_name, customer_service_phone_number, corporate_client_code, additional_discount_amount, room_location, special_program_code, total_tax_amount, prepaid_cost, food_and_beverage_cost, room_tax_amount, adjustment_amount, phone_cost, restaurant_cost, room_service_cost, mini_bar_cost, laundry_cost, miscellaneous_cost, gift_shop_cost, movie_cost, health_club_cost, valet_parking_cost, cash_disbursement_cost, non_room_cost, business_center_cost, lounge_bar_cost, transportation_cost, gratuity_amount, conference_room_cost, audio_visual_cost, banquest_cost, non_room_tax_amount, early_check_out_cost, internet_access_cost, name, hotel_name, check_in_date_time, check_out_date_time].hash
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
