# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Shoulda::Matchers::ActiveModel::RequireAValidPanamanianRucMatcher do
  subject { User.new }

  it { is_expected.to require_a_valid_panamanian_ruc }
  it { is_expected.to require_a_valid_panamanian_ruc(:id) }
  it { is_expected.not_to require_a_valid_panamanian_ruc(:name) }
end
