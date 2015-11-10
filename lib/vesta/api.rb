class Api
  def initialize
    @c = self.class.name.to_s.gsub(/^.*::/, '-').hyphenated
  end
end
# module Kernel
#     def hypher
#         self.gsub(/_/, '-')
#     end
# private
#     def method_name
#       caller[0] =~ /`([^']*)'/ and $1.hypher
#     end
# end
