require 'cat_facts'

describe CatFacts do
  it 'calls API to provide cat fact' do
    requester_double = double :requester
    expect(requester_double).to receive(:get)
      .with(URI("https://catfact.ninja/fact"))
      .and_return('{"fact":"Statistics indicate that animal lovers in recent years have shown a preference for cats over dogs!","length":98}')
    cat_fact = CatFacts.new(requester_double)
    expect(cat_fact.provide).to eq "Cat fact: Statistics indicate that animal lovers in recent years have shown a preference for cats over dogs!"
  end

end