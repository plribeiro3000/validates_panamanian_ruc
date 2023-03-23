# frozen_string_literal: true

require 'active_model'
require 'validates_panamanian_ruc/panamanian_ruc_validator'
require 'validates_panamanian_ruc/require_a_valid_panamanian_ruc_matcher' if defined?(Shoulda)

module ValidatesPanamanianRuc
  autoload :PanamanianRuc, 'validates_panamanian_ruc/panamanian_ruc'
end
