ROMAN_MAP = { 1 => "I",
                  4 => "IV",
                  5 => "V",
                  9 => "IX",
                  10 => "X",
                  40 => "XL",
                  50 => "L",
                  90 => "XC",
                  100 => "C",
                  400 => "CD",
                  500 => "D",
                  900 => "CM",
                  1000 => "M" }


ROMAN_NUMERALS = Array.new(3999) do |index|
        target = index + 1
        ROMAN_MAP.keys.sort { |a, b| b <=> a }.inject("") do |roman, div|
            times, target = target.divmod(div)
            roman << ROMAN_MAP[div] * times
            
        end
end

#puts ROMAN_NUMERALS.inspect
def to_roman(n)
   puts ROMAN_NUMERALS[n-1]
end 

def to_arabic(n)
   puts ROMAN_NUMERALS.index(n)+1
end 




to_roman(1)
to_roman(2)
to_roman(3)
to_roman(4)
to_arabic("I")
to_arabic("II")
to_arabic("III")
to_arabic("IV")

