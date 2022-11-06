describe Network do
  let(:nbc) { Network.first }

  before do
    nbc = Network.create(channel: 4, call_letters: "NBC")
    Show.create(name: "Community", network_id: nbc.id)
  end

  it "has a channel and call_letters" do
    expect(nbc).to have_attributes(channel: 4, call_letters: "NBC")
  end



  describe "#sorry" do
    it "apologizes for passing on John Mulaney's Pilot" do
      expect(nbc.sorry).to eq("We're sorry about passing on John Mulaney's pilot")
    end
  end
  
end
