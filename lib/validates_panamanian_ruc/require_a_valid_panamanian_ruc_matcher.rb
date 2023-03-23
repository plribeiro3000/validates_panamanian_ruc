# frozen_string_literal: true

require 'shoulda-matchers'

module Shoulda
  module Matchers
    module ActiveModel
      def require_a_valid_panamanian_ruc(attr = :ruc)
        RequireAValidPanamanianRucMatcher.new(attr)
      end

      class RequireAValidPanamanianRucMatcher < ValidationMatcher
        def description
          'requires a valid Panamanian Ruc'
        end

        def failure_message
          'does not require a valid Panamanian Ruc'
        end

        def matches?(subject)
          super(subject)

          allows_value_of('123456789-2-1983') &&
            allows_value_of('10101010-1-2005') &&
            allows_value_of('123121234-L-2040') &&
            disallows_value_of('90-234-1-23') &&
            disallows_value_of('10-0-123-123')
        end
      end
    end
  end
end
