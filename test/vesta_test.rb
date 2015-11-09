require 'test_helper'
require 'vesta'
require 'api_test'


class VestaTest < Minitest::Test
  def test_that_it_has_a_version_number
     refute_nil ::Vesta::VERSION
  end
end
