require 'rails_helper'

RSpec.describe User, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:sent_follow_requests) }

    it { should have_many(:received_follow_requests) }

    it { should have_many(:comments) }

    it { should have_many(:likes) }

    it { should have_many(:own_photos) }

    end

    describe "InDirect Associations" do

    it { should have_many(:liked_photos) }

    it { should have_many(:commented_photos) }

    it { should have_many(:receivers) }

    it { should have_many(:followers) }

    it { should have_many(:senders) }

    it { should have_many(:leaders) }

    it { should have_many(:leaders_own_photos_feed) }

    end

    describe "Validations" do
      
    end
end
