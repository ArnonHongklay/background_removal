require 'spec_helper'

describe BackgroundRemover do
  # it "is true" do
  #   expect(true).to be_true
  # end
  it "has the name BackgroundRemover" do
    expect(BackgroundRemover::Base.instance.name).to eql("BackgroundRemover")
  end
end
