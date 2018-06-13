require 'rails_helper'

RSpec.describe Artwork, type: :model do
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:created_on) }
end
