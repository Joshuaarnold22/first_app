require 'rails_helper' #when I created the Vote model I got a conflict with this file

describe Vote do 
  describe "validations" do
    describe "value validation" do
      it "only allows -1 or 1 as values" do
        v1 = Vote.new(value: 1)
        expect(v1.valid?).to eq(true)

        v2 = Vote.new(value: -1)
        expect(v2.valid?).to eq(true) #valid?

        wrong_v = Vote.new(value: 2)
        expect(wrong_v.valid?).to eq(false)
      end
    end
  end
end