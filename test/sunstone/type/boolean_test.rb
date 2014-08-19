require 'test_helper'

class Sunstone::Type::BooleanTest < Minitest::Test

  test "type casting" do
    type = Sunstone::Type::Boolean.new
    
    assert_equal true, type.type_cast_from_user(true)
    assert_equal true, type.type_cast_from_user('true')
    assert_equal true, type.type_cast_from_user('TRUE')
    
    assert_equal false, type.type_cast_from_user(false)
    assert_equal false, type.type_cast_from_user('false')
    assert_equal false, type.type_cast_from_user('FALSE')
  end
  
  test "#type_cast_for_json" do
    type = Sunstone::Type::Boolean.new
    
    assert_equal true, type.type_cast_for_json(true)
    assert_equal false, type.type_cast_for_json(false)
  end

end