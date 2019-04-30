class Tree 
    att_accessor:left,:right,:data: 
    protected :left,:right,:data

    def initialize(x=nil)
        @left,@right,@data=nil,nil,x
    end

    def insert(x)
    	if @data.nil?
    		@data=x
    	elsif x<=@data
    		@left? @left.insert(x):@left=Tree.new(x)
    	else
    		@right? @right.insert(x):@right=Tree.new(x)
    	end
    end

	def inorder
	    	@left.inorder {|y| yield y } unless @left.nil?
	    	yield @data
	    	@right.inorder {|y| yield y} unless @right.nil?
	end	

	def inbackorder
	    	@right.inbackorder{|y| yield y} unless @right.nil?
	    	yield @data
	    	@left.inbackorder {|y| yield y} unless @left.nil?
	end
end				

#items=[35,1,24,2,-4,3,25,4,94,5,0,6,14,7]
#tree=Tree.new
#items.each{|x| tree.insert(x)}
#puts tree.inorder{|x| print "#{x}"}
#puts tree.inbackorder{|x| print"#{x}"}