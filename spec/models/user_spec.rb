require 'rails_helper'

RSpec.describe User, type: :model do

  subject do
    described_class.new(
                        :first_name => 'Gandalf', 
                        :last_name => 'The White', 
                        :email => 'gandalf@middleearth.com', 
                        :password => "test", 
                        :password_confirmation => "test", 
                        :password_digest => "333"
                      )
  end

  describe 'Validations' do

    it 'should save when all fields are set' do
      subject.valid?
      expect(subject.errors).to be_empty
    end

    it 'should not save when email field is empty' do
      subject.email = nil
      subject.valid?
      expect(subject.errors).not_to be_empty
    end

    it 'should not save when first name field is empty' do
      subject.first_name = nil
      subject.valid?
      expect(subject.errors).not_to be_empty
    end

    it 'should not save when last name field is empty' do
      subject.last_name = nil
      subject.valid?
      expect(subject.errors).not_to be_empty
    end

    it 'should not save when password field is empty' do
      subject.password = nil
      subject.valid?
      expect(subject.errors).not_to be_empty
    end

    it 'should not save when password confirmation field is empty' do
      subject.password_confirmation = nil
      subject.valid?
      expect(subject.errors).not_to be_empty
    end

    it 'should fail to save when when password and password confirmation do not match' do
      subject.password_confirmation = 'wrongPassword'
      subject.valid?
      expect(subject.errors).not_to be_empty
    end

    it 'should fail to save when email is not unique' do
      User.create(
                  :first_name => 'Gandalf', 
                  :last_name => 'The White', 
                  :email => 'gandalf@middleearth.com', 
                  :password => "test", 
                  :password_confirmation => "test", 
                  :password_digest => "333"
                )
      subject.valid?
      expect(subject.errors).not_to be_empty
    end

    it 'should fail to save if password length is less than four characters' do
      subject.password = 'tes'
      subject.password_confirmation = 'tes'
      subject.valid?
      expect(subject.errors).not_to be_empty
    end

    describe '.authenticate_with_credentials' do
      it 'it should return the user if authentication is successful' do
        user = SessionsController.authenticate_with_credentials('gandalf@middleearth.com', 'test')
        expect(subject).eql? user
      end

      it 'should return a nil value if fails to authenticate user' do
        user = SessionsController.authenticate_with_credentials('gandalf@middleearth.com', 'wrongPass')
        expect(subject).eql? nil
      end
    end

  end
end