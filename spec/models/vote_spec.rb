require 'rails_helper'

describe Vote do 
  describe "validations" do
    describe "value validation" do
      it "only allows -1 or 1 as values" do
        @vote_01 = Vote.new(value: 1)
        expect ( @vote_01.valid?).to eq(true)

        @vote_02 = Vote.new(value: -1)
        expect ( @vote_02.valid?).to eq(true)

        @vote_03 = Vote.new(value: 2)
        expect ( @vote_03.valid?).to eq(false)
      end
    end
  end
end