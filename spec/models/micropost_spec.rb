require 'rails_helper'

RSpec.describe Micropost, type: :model do
  describe "when user_id is present" do
    it { is_expected.to validate_presence_of(:user) }
  end
end
