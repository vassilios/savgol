require 'savgol/version'
require 'savgol/array'

module Savgol
end

# ar = [1, 2, 3, 4, 3.5, 5, 3, 2.2, 3, 0, -1, 2, 0, -2, -5, -8, -7, -2, 0, 1, 1]
# numpy_savgol_output = [1.0, 2.0, 3.12857143, 3.57142857, 4.27142857, 4.12571429, 3.36857143, 2.69714286, 2.04, 0.32571429, -0.05714286, 0.8, 0.51428571, -2.17142857, -5.25714286, -7.65714286, -6.4, -2.77142857, 0.17142857, 0.91428571, 1.0]
# sg = ar.savgol(5,3)
# 
# sg.zip(numpy_savgol_output) do |sgv, numpy_sgv|
#   p "#{sgv} vs #{numpy_sgv} diff #{(sgv - numpy_sgv).abs.round(8)}"
# end
