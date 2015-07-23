require 'spec_helper'

RSpec.describe Review, type: :model do

  it { should belong_to(:hotel) }

  it { should validate_presence_of(:title) }

  it { should validate_presence_of(:rating) }

  it { should validate_presence_of(:comment) }

end
