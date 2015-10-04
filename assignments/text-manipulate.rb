# -----------------------------------------------------------
# demonstrates various techniqes to manipulate strings
#o
# (C) 2015 Frank Hofmann, Berlin, Germany
# Released under GNU Public License (GPL)
# email frank.hofmann@efho.de
# -----------------------------------------------------------

class ModifyText

	def initialize(text="")
		# constructor: initialize class
		@text = text
	end

	def setText(text="")
		# set text variable
		@text = text
	end

	def getText()
		# get value of text variable
		
		# short way of writing - return value if this is the last statement
		# @txt

		# long way of writing (explicit way)
		return @text
	end

	def to_s()
		# get value of text variable
		return getText()
	end

	def reverseText()
		# return a reversed version of the text
		return @text.reverse
	end

	def hideVowels()
		# return text with hidden vowels

		# define regular expression
		pattern = "/[aeiou]/i"

		# define substitution
		substitution = "*"

		return @text.gsub(pattern, substitution)
	end

	def caesarChiffre()
		# return text in rot13 mode

		# define regular expression
		pattern = "[A-Z][a-z]"

		# define substitution
		substitution = "[N-ZA-M][n-za-m]"

		return @text.tr(pattern, substitution)
	end
end
