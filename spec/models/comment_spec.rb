require 'rails_helper'

RSpec.describe Comment, type: :model do
  it {should belong_to(:article)}
  it {should belong_to(:oo7er).with_primary_key('oo7er_id')}
end
