# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Shoulda::Matchers::ActiveModel::RequireAValidPanamanianTaxpayerRegistryMatcher do
  subject { User.new }

  it { is_expected.to require_a_valid_panamanian_taxpayer_registry }
  it { is_expected.to require_a_valid_panamanian_taxpayer_registry(:id) }
  it { is_expected.not_to require_a_valid_panamanian_taxpayer_registry(:name) }
end
