require 'rails_helper'

RSpec.describe Favourite, type: :model do
  it { should belong_to(:artwork) }
end
