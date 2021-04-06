require 'test/unit'
require_relative '../lib/ex49'

class ParserTests < Test::Unit::TestCase

	Pair = Struct.new(:token, :word)
# 	//Pair = Struct.new(:token, :word)

    def test_parse_verb()
        assert_raise(ParserError){Parser.parse_verb([false])}
		verb = Parser.parse_verb([Pair.new(:verb, 'go')])
		assert_equal("go",verb.word)		
	end

	def test_parse_object()
        assert_raise(ParserError){Parser.parse_object([false])}
		object = Parser.parse_object([Pair.new(:noun, 'north')])
		assert_equal("north", object.word)		
	end
	def test_parse_subject()
		word_list = [('verb','run'), ('noun','Bear'), ('verb','jump')]
		subj = ('noun', 'me')
		result = ex49.parse_subject(word_list,subj)
		assert_equal(result.subject, 'me')
		assert_equal(result.verb, 'run')
		assert_equal(result.object, 'Bear')
    end



end
