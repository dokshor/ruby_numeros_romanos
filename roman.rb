class Roman
    ROMAN_MAP = { 
      5000 => "V"
      1000 => "M",
      900 => "CM",
      600 => "DC",
      500 => "D",
      200 => "CC",
      100 => "C",
      90 => "XC",
      60 => "LX",
      50 => "L",
      49 => "IL",
      48 => "XLVIII",
      40 => "XL",
      10 => "X",
      9 => "IX",
      5 => "V",
      4 => "IV",
      1 => "I"      
    }

    def initialize(number=0)
        raise "No puede inicializar en 0" if number == 0
        raise "No puede inicializar en negativo" if number < 0
        @number = number
    end

    def convert
      result = ""

      ROMAN_MAP.each do |arabic, roman|

        while @number >= arabic
          result += roman
          @number -= arabic
        end

      end

      result
    end

end