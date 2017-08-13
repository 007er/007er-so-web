require 'rails_helper'

RSpec.describe Oo7er, type: :model do
  it {should belong_to(:group)}
  it {should have_many(:articles).with_primary_key('oo7er_id').inverse_of(:oo7er)}
end
