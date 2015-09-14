require 'rails_helper'

describe BGRM do
  describe "BGRM::Loader" do
    it "should have a Load object" do
      defined?(Loader).should_not be_false
    end
  end

  describe "BGRM::Processor" do
    it "should have a Processor object" do
      defined?(Processor).should_not be_false
    end
  end
  # it "is true" do
  #   expect(true).to be_truthy
  # end
  #
  # it "has the name BackgroundRemover" do
  #   expect(BackgroundRemover::Base.instance.name).to eql("BackgroundRemover")
  # end
end
