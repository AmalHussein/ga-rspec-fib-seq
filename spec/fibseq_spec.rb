require 'spec_helper'
require_relative '../lib/fiboseq'

describe "#fib"  do 

	it "should have a method called fib" do
		expect(method(:fib))
	end 

	it "should have one parameter called x" do
		parameters = method(:fib).parameters
		expect(parameters[0]).to include(:req)
		expect(parameters[0]).to include(:x)
		expect(parameters.length).to eq 1
	end


	it "should put numbers into an incrementing array" do
		expect(fib(5)).to eq [0, 1, 1, 2, 3]
		expect(fib(2)).to eq [0,1]
		expect(fib(3)).to eq [0, 1, 1]
		expect(fib(4)).to eq [0, 1, 1, 2]
		expect(fib(10)).to eq [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
	end

	it "show raise an error when a non-integer is passed as a parameter" do 
		expect{ fib("this is text") }.to raise_error(NoMethodError)
		expect{ fib(true) }.to raise_error(NoMethodError)
		expect{ fib(false)}.to raise_error(NoMethodError)
		expect{ fib([1,2]) }.to raise_error(NoMethodError)
	end

end 