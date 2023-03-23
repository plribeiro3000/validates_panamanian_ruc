# frozen_string_literal: true

class User
  include ActiveModel::Model

  attr_accessor :id, :name, :ruc

  validates :ruc, panamanian_ruc: true
  validates :id, panamanian_ruc: true
end
