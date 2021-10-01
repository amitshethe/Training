require "matrix"
class Mat
    def methodMat
        mattrans = Matrix[[3, 12,12], [2, 8,3],[2,7,9]]  
        puts  mattrans.transpose()
    end
end
obj = Mat.new
obj.methodMat
  

