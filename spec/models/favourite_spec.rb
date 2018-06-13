require 'rails_helper'

RSpec.describe Favourite, type: :model do
  it { should belong_to(:artwork) }
  it { should validate_presence_of(:created_on) }
end
