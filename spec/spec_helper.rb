# frozen_string_literal: true

require 'rspec'
require 'active_model'
require 'shoulda-matchers'
require 'jazz_fingers'

RSpec.configure do |config|
  config.include Shoulda::Matchers::ActiveModel
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

JazzFingers.configure do |config|
  config.colored_prompt = false
  config.amazing_print = false
  config.coolline = false
end

require File.expand_path('lib/validates_panamanian_ruc')
require File.expand_path('spec/fake_app/user')
