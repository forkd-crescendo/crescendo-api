require 'rails_helper'

RSpec.describe Artwork, type: :model do
  it { should validate_presence_of(:title) }
end
