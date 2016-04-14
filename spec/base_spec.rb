require "spec_helper"
#
describe Vesta do
  describe 'Base' do
    it 'include all base methods' do
      expect(Base.all_methods.count).to eq 276
    end
  end
end
