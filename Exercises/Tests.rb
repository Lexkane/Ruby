require './tree.rb'
require 'minitest/autorun'

class TestTree <MiniTest:Unit:TestCase
	def setup
		@items=Array.new(100){rand(200)-100}
		#@items=100.times.map{Random.rand(200)-100}

		@tree=Tree.new
		@items.each{|x| @tree.insert(x)}
		@result=[]
	end
	def test_1
		@tree.inorder{|x| print"(x)":@result <<x}
		assert_equal(@items.sort,@result)
	end
	
	def test_2
		@tree.inbackorder{|x| print "(x)":@result<<x}
		assert_equal(@items.sort_by{|x|-x},@result)

	end
end
