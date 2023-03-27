# frozen_string_literal: true

module ValidatesPanamanianTaxpayerRegistry
  class PanamanianTaxpayerRegistry
    REGEX = /\A([0-9]{8,9})-([1-3])-([1-2][9|0][0-9]{2})\z/i.freeze

    def initialize(value)
      @value = value
    end

    def valid?
      return true if @value.blank?

      @match = @value.match(REGEX)

      @match.present? && valid_type? && valid_year?
    end

    private

    def valid_type?
      if commercial_entity?
        folio.size == 9
      elsif non_commercial_entity?
        folio.size == 8
      elsif third_generation?
        true
      else
        false
      end
    end

    def valid_year?
      if fourth_generation?
        year >= 2014
      elsif third_generation?
        year >= 1999 && year <= 2014
      else
        false
      end
    end

    def third_generation?
      type == 1
    end

    def fourth_generation?
      commercial_entity? || non_commercial_entity?
    end

    def commercial_entity?
      type == 2
    end

    def non_commercial_entity?
      type == 3
    end

    def folio
      @folio ||= @match[1]
    end

    def type
      @type ||= @match[2].to_i
    end

    def year
      @year ||= @match[3].to_i
    end
  end
end
