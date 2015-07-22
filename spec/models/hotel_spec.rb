require 'spec_helper'

RSpec.describe Hotel, type: :model do
 
  it { should have_many(:reviews) }



end
