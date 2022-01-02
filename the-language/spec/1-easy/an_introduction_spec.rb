RSpec.describe 'an introduction to ruby' do
  context 'using expectations' do
    it 'checks reality' do
      expect(true).to be true  # it should be true
    end

    it 'verifies our expectations against reality' do
      expected = 2
      actual   = 1 + 1

      expect(actual).to be expected
    end

    it 'has better ways to compare equality' do
      expected = 2
      actual   = 1 + 1

      expect(actual).to eq expected
    end

<<<<<<< HEAD
    it 'will ask you to fill in values' do
      expect(1 + 1).to eq(2)
=======
    it 'allows you to fill in values' do
      expect(1 + 1).to eq(__)
>>>>>>> upstream/main
    end
  end
end
