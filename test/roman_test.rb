require "test/unit"

require '../roman.rb'

class RomanTest < Test::Unit::TestCase

	def test_cero
		assert_raise(RuntimeError) {
			Roman.new(0)
		}
	end

  def test_negativo
    assert_raise(RuntimeError) {
      Roman.new(-10)
    }
  end

  def test_diez
    roman_number = Roman.new(10).convert
    assert_equal("X", roman_number)
  end

  def test_veinte
    roman_number = Roman.new(20).convert
    assert_equal("XX", roman_number)
  end

  def test_treinta
    roman_number = Roman.new(30).convert
    assert_equal("XXX", roman_number)
  end

  def test_cuarenta
    roman_number = Roman.new(40).convert
    assert_equal("XL", roman_number)
  end

  def test_cincuenta
    roman_number = Roman.new(50).convert
    assert_equal("L", roman_number)
  end

  def test_sesenta
    roman_number = Roman.new(60).convert
    assert_equal("LX", roman_number)
  end

  def test_noventa
    roman_number = Roman.new(90).convert
    assert_equal("XC", roman_number)
  end

  def test_cien
    roman_number = Roman.new(100).convert
    assert_equal("C", roman_number)
  end

  def test_milcien
    roman_number = Roman.new(1100).convert
    assert_equal("MC", roman_number)
  end


  def test_mildocientostreintaytres
    roman_number = Roman.new(1233).convert
    assert_equal("MCCXXXIII", roman_number)
  end

  def test_trecientoscincuentaytres
    roman_number = Roman.new(353).convert
    assert_equal("CCCLIII", roman_number)
  end


end
