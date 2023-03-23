# frozen_string_literal: true

class User
  include ActiveModel::Model

  attr_accessor :id, :name, :taxpayer_registry

  validates :taxpayer_registry, panamanian_taxpayer_registry: true
  validates :id, panamanian_taxpayer_registry: true
end
