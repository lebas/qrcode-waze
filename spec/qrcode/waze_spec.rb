require 'spec_helper'

describe Qrcode::Waze do
  it 'has a version number' do
    expect(Qrcode::Waze::VERSION).not_to be nil
  end

  it 'has a address, size and filename' do
   code = Qrcode::Waze.Code2Map.new('R. Cosme Velho, 98 - Cosme Velho, Rio de Janeiro - RJ, Brasil', 11, 'sion.png')
   code.valid?
  end

  it 'is invalid size nil' do 
  	code = Qrcode::Waze.Code2Map.new('R. Cosme Velho, 98 - Cosme Velho, Rio de Janeiro - RJ, Brasil', nil, 'sion.png')
  	code.valid?
  end

  it 'is invalid filename nil' do
  	code = Qrcode::Waze.Code2Map.new('R. Cosme Velho, 98 - Cosme Velho, Rio de Janeiro - RJ, Brasil', 6, nil)
  	code.valid?
  end
end
