require 'spec_helper'
require 'shoulda/matchers'

RSpec.describe Hotel, type: :model do
 
  it { should have_many(:reviews) }
   
  it { should validate_presence_of :name }

  it { should validate_presence_of :rating }
   

end
