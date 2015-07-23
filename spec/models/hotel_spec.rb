require 'spec_helper'
require 'shoulda/matchers'

RSpec.describe Hotel, type: :model do
 
  it { should have_many(:reviews) }



end
