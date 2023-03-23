# frozen_string_literal: true

module ValidatesPanamanianRuc
  class PanamanianRuc
    REGEX = /\A([0-9]{8,9})-([A-Z0-9]{1})-(19[5-9]\d|20[0-4]\d|2050)\z/i.freeze

    def initialize(value)
      @value = value
    end

    def valid?
      return true if @value.blank?

      @value.match(REGEX)

      Regexp.last_match(0).present?
    end
  end
end
