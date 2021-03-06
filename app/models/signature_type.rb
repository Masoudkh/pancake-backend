# frozen_string_literal: true

class SignatureType < ApplicationRecord
  validates :name, uniqueness: true
  scope :applicant, -> { where(name: 'applicant') }
  scope :witness, -> { where(name: 'witness') }
end
