require 'spec_helper'
require_relative '../lib/fibseq'

describe "#fibonacci"  do #we use a hash here,because that is the way we describe a method
 	it "should have a method called square" do
 		expect(method(:square))
 	end 



 	it "should have one arguement called x" do #it is a method, so is describe. 
 		parameters = method(:square).parameters
 		expect(parameters[0]).to include(:req)
 		expect(parameters[0]).to include(:x)
 		expect(parameters.length).to eq 1
	end

 	it "should square numbers" do
 		expect(square(0.5)).to eq 0.25
 		expect(square(1)).to eq 1
 		expect(square(4)).to eq 16
 		expect(square(-4)).to eq 16
 		expect(square(2)).to eq 4
 		expect(square(2.5)).to eq 6.25
	end

it "show raise an error when a non-number is passed as a parameter" do 
    expect{ square("cat") }.to raise_error(NoMethodError)
    expect{ square(true) }.to raise_error(NoMethodError)
    expect{ square([1,2]) }.to raise_error(NoMethodError)
  end
end
