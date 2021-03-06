RSpec.describe Article, type: :model do
    describe 'DB table' do
      it { is_expected.to have_db_column :id }
      it { is_expected.to have_db_column :title }
    end
    
    describe 'Validations' do
      it { is_expected.to validate_presence_of :title }
    end
    
    describe 'Factory' do
      it 'should have valid Factory' do
        expect(FactoryBot.create(:article)).to be_valid
      end
    end
  end