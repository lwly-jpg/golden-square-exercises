require 'cipher'

describe 'encode method' do
  it "returns 'EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL' when passed 'theswiftfoxjumpedoverthelazydog' and secretkey" do
    result = encode("theswiftfoxjumpedoverthelazydog", "secretkey")
    expect(result).to eq "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
  end
end






