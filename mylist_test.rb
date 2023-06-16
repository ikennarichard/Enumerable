require_relative 'index'

describe 'Tests for my list' do
  list = MyList.new(1, 2, 3, 4)

  it 'returns true/false based on the condition' do
    expect(list.all? { |e| e < 5 }).to be true
    expect(list.all? { |e| e == 5 }).to be false
  end

  it 'returns true/false based on the condition' do
    expect(list.any? { |e| e == 2 }).to be true
    expect(list.any? { |e| e == 5 }).to be false
  end

  it 'returns filtered list' do
    expect(list.filter(&:even?)).to eq([2, 4])
  end
end
