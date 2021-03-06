# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'RebateForm', type: :feature do
  let(:rebate_form) { FactoryBot.create :rebate_form }

  it "Anonymous can't see it" do
    visit "/admin/rebate_forms/#{rebate_form.id}"
    expect(page).to have_text('Forgot your password?')
  end
end
