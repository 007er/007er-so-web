require 'rails_helper'

RSpec.describe Article, type: :model do
  it {should belong_to(:oo7er).with_primary_key('oo7er_id').inverse_of(:articles)}
end
