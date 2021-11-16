require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do

    let(:category) do
      Category.new(:name => 'Appliances')
    end

    subject do
      described_class.new(:name => 'Fridge', :price => 1500, :quantity => 4, :category => category)
    end 

      it 'should save when all fields are set and belongs to category' do
        subject.valid?
        expect(subject.errors).to be_empty
        assc = described_class.reflect_on_association(:category)
        expect(assc.macro).to eq :belongs_to
      end

      it 'should not save if name field is empty' do
        subject.name = nil
        subject.valid?
        expect(subject.errors).not_to be_empty
      end

      it 'should not save price is empty' do
        subject.price_cents = nil
        subject.valid?
        expect(subject.errors).not_to be_empty
      end

      it 'should fail to save if quantity is empty' do
        subject.quantity = nil
        subject.valid?
        expect(subject.errors).not_to be_empty
      end

      it 'should fail to save when category is empty' do
        subject.category = nil
        subject.valid?
        expect(subject.errors).not_to be_empty
      end

    end  
end
