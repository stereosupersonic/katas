require_relative '../lib/reverse_it'

describe ReverseIt do
  it 'should do something 1' do
    expect(ReverseIt.reverse_it('Hello')).to eq 'olleH'
  end

  it 'should do something 2' do
    expect(ReverseIt.reverse_it(314159)).to eq 951413
  end

  it 'should do something 3' do
    expect(ReverseIt.reverse_it('314159')).to eq '951413'
  end

  it 'should do something 4' do
    expect(ReverseIt.reverse_it( 7418.910546112402)).to eq 204211645019.8147
  end

  it 'should do something 4' do
    expect(ReverseIt.reverse_it([])).to eq([])
  end

end
