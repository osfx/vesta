require 'test_helper'
require 'vesta'

class VestaTest < Minitest::Test
  def test_that_it_has_a_version_number
     refute_nil ::Vesta::VERSION
  end

  # def setup
  # 	@api = Vesta::Api.new
  # end
  #
  # def test_methods
  #   assert_equal 'ok', @api.runner
  # end
end
