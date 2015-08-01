require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Have fields" do
    it { is_expected.to have_field(:name).of_type(String) }
    it { is_expected.to have_field(:email).of_type(String) }
  end
end
