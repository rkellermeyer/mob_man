require 'spec_helper'

describe User do
  context 'has attributes' do
    it { should have_db_column(:first_name).of_type(:string) }
    it { should have_db_column(:last_name).of_type(:string) }
    it { should have_db_column(:username).of_type(:string) }
    it { should have_db_column(:encrypted_password).of_type(:string) }
    it { should have_db_column(:email).of_type(:string) }
  end

  context 'validations' do
    it { should validate_presence_of :first_name }
    it { should validate_presence_of :last_name }
    it { should validate_presence_of :username }
    it { should validate_presence_of :encrypted_password }
    it { should validate_presence_of :email }
    it { should validate_uniqueness_of :email }
  end

  context 'associations' do
    it { should have_many :articles }
    it { should have_many :arts }
    it { should have_many :songs }
    it { should have_many :videos }
  end
end
