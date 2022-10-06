require_relative '../encrypt'

# describe => tells the name of the method
# it => describes what the test is doing
# expect => calls the method and compares to the expected result

describe '#encrypt' do
  it 'should return a string' do
    actual = encrypt('THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG')
    expected = String
    expect(actual).to be_a(expected)
  end

  it 'should return an encrypted string when given a sentence' do
    actual = encrypt('THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG')
    expected = 'QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD'
    expect(actual).to eq(expected)
  end

  it 'should return an encrypted string when given a sentence with special characters' do
    actual = encrypt('THE QUICK BROWN, FOX JUMPS OVER THE LAZY DOG')
    expected = 'QEB NRFZH YOLTK, CLU GRJMP LSBO QEB IXWV ALD'
    expect(actual).to eq(expected)
  end
end
