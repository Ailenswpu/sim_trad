require 'test_helper'

class SimTradTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::SimTrad::VERSION
  end

  def test_translate_to_simple
    assert_equal SimTrad::to_simple("轉街過巷 就如滑過浪潮 聽天說地 仍然剩我心跳"), "转街过巷 就如滑过浪潮 听天说地 仍然剩我心跳"
  end

  def test_translate_to_simple
    assert_equal SimTrad::to_trad("转街过巷 就如滑过浪潮 听天说地 仍然剩我心跳"), "轉街過巷 就如滑過浪潮 聽天說地 仍然剩我心跳"
  end

  def test_translate_to_trad_english
    assert_equal SimTrad::to_trad("hello test"), "hello test"
  end

  def test_translate_to_simple_english
    assert_equal SimTrad::to_simple("hello test"), "hello test"
  end
end
