# frozen_string_literal: true

require 'spec_helper'

RSpec.describe ValidatesPanamanianRuc::PanamanianRuc do
  it 'accepts 10121212-1-1983' do
    expect(ValidatesPanamanianRuc::PanamanianRuc.new('10121212-1-1983')).to be_valid
  end

  it 'accepts 101111111-A-1950' do
    expect(ValidatesPanamanianRuc::PanamanianRuc.new('101111111-A-1950')).to be_valid
  end

  it 'accepts 123456789-D-2045' do
    expect(ValidatesPanamanianRuc::PanamanianRuc.new('123456789-D-2045')).to be_valid
  end

  it 'accepts 999999999-2-2000' do
    expect(ValidatesPanamanianRuc::PanamanianRuc.new('999999999-2-2000')).to be_valid
  end

  it 'accepts 23121212-L-2005' do
    expect(ValidatesPanamanianRuc::PanamanianRuc.new('23121212-L-2005')).to be_valid
  end

  it 'rejects 10-01-23-123' do
    expect(ValidatesPanamanianRuc::PanamanianRuc.new('10-01-23-123')).not_to be_valid
  end

  it 'rejects AA-123-123' do
    expect(ValidatesPanamanianRuc::PanamanianRuc.new('AA-123-123')).not_to be_valid
  end

  it 'rejects 1-1' do
    expect(ValidatesPanamanianRuc::PanamanianRuc.new('1-1')).not_to be_valid
  end

  it 'rejects 0-12-12' do
    expect(ValidatesPanamanianRuc::PanamanianRuc.new('0-12-12')).not_to be_valid
  end

  it 'rejects 1-0-1' do
    expect(ValidatesPanamanianRuc::PanamanianRuc.new('1-0-1')).not_to be_valid
  end

  it 'rejects 1-0' do
    expect(ValidatesPanamanianRuc::PanamanianRuc.new('1-0')).not_to be_valid
  end

  it 'rejects A' do
    expect(ValidatesPanamanianRuc::PanamanianRuc.new('A')).not_to be_valid
  end

  it 'accepts blank string' do
    expect(ValidatesPanamanianRuc::PanamanianRuc.new('')).to be_valid
  end

  it 'accepts nil' do
    expect(ValidatesPanamanianRuc::PanamanianRuc.new(nil)).to be_valid
  end
end
