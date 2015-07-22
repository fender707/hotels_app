require 'spec_helper'

RSpec.describe Review, type: :model do

  it { should belongs_to(:hotel) }

  it { should validate_persence_of(:title) }

  it { should validate_persence_of(:rating) }

  it { should validate_persence_of(:comment) }

end