require 'rails_helper'

RSpec.describe "test", type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  describe "let" do
  	let(:each) { puts "aaaaa" }
	  before(:each) do
	  	puts "expect before..."
	  end

	  it "+" do
	  	expect(10*10).to eq(100)
	  end

	  # it "change" do
	 		# expect(Happy.count).to eq(0)
	 		# Happy.create
	 		# expect(Happy.count).to eq(1)
	 		#---------------------------
	 		# expect {
	 		# 	Happy.create
	 		# }.to change {Happy.count}.by(1)
	 		#------------------------------
	 		# expect {
	 		# 	# do something
	 		# }.to change {.........}.by(2)
	 	# end
	end


end
