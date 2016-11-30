require File.expand_path('../helper', __FILE__)

class Reality::TestOrderedHash < Reality::TestCase
  def test_basic_operation
    h = Reality::OrderedHash.new
    h['a'] = 1
    h['b'] = 's'
    h['c'] = true
    h['d'] = false
    h['e'] = 4.3
    h['g'] = nil
    assert_equal h['a'], 1
    assert_equal h['b'], 's'
    assert_equal h['c'], true
    assert_equal h['d'], false
    assert_equal h['e'], 4.3
    assert_equal h['g'], nil
    assert_equal h.keys, %w(a b c d e g)

    # Random updates to ensure updates do not reorder
    h['b'] = 'X'
    h['a'] = 'X'
    h['c'] = 'X'
    h['f'] = 'X'

    assert_equal h['a'], 'X'
    assert_equal h['b'], 'X'
    assert_equal h['c'], 'X'
    assert_equal h['d'], false
    assert_equal h['e'], 4.3
    assert_equal h['g'], nil
    assert_equal h['f'], 'X'

    assert_equal h.keys, %w(a b c d e g f)
  end
end
