require 'rails_helper'

describe User do
	it { should validate_presence_of(:first_name) }
	it { should validate_presence_of(:last_name) }
	it { should validate_presence_of(:telephone) }
	it { should validate_numericality_of(:telephone).only_integer }
	it { should validate_format_of(:email).with('adam@trimediatlantic.com')}
	it { should have_many(:buildings).dependent(:destroy) }
	it { should have_many(:companies).dependent(:destroy) }
	
	describe '#role_to_str' do
		it 'returns role name' do
			user = create(:user)
			expect(user.role_to_str).to eq 'Role type'
		end
	end
end

