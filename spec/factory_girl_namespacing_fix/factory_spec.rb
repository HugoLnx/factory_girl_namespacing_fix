here = File.dirname __FILE__
require File.join(here,'../spec_helper')

describe Factory do
	context ',when defining' do
		it 'should accept classes in modules' do
			module Mod
				class FGTest
					attr_accessor :v1,:v2
				end
			end
			
			Factory.define :fgtest, :class => 'Mod::FGTest' do |fgt|
				fgt.v1 'testando'
				fgt.v2 'testando2'
			end
			
			lambda{Factory.build(:fgtest)}.should_not raise_error
		end
	end
end
