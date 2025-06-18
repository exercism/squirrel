dofile("isogram.nut")

IsogramTest <- class extends Test {
    function test_empty_string() {
        assert_equal(true, Isogram.is_isogram(""))
    }

    function test_isogram_with_only_lower_case_characters() {
        assert_equal(true, Isogram.is_isogram("isogram"))
    }

    function test_word_with_one_duplicated_character() {
        assert_equal(false, Isogram.is_isogram("eleven"))
    }

    function test_word_with_one_duplicated_character_from_the_end_of_the_alphabet() {
        assert_equal(false, Isogram.is_isogram("zzyzx"))
    }

    function test_longest_reported_english_isogram() {
        assert_equal(true, Isogram.is_isogram("subdermatoglyphic"))
    }

    function test_word_with_duplicated_character_in_mixed_case() {
        assert_equal(false, Isogram.is_isogram("Alphabet"))
    }

    function test_word_with_duplicated_character_in_mixed_case_lowercase_first() {
        assert_equal(false, Isogram.is_isogram("alphAbet"))
    }

    function test_hypothetical_isogrammic_word_with_hyphen() {
        assert_equal(true, Isogram.is_isogram("thumbscrew-japingly"))
    }

    function test_hypothetical_word_with_duplicated_character_following_hyphen() {
        assert_equal(false, Isogram.is_isogram("thumbscrew-jappingly"))
    }

    function test_isogram_with_duplicated_hyphen() {
        assert_equal(true, Isogram.is_isogram("six-year-old"))
    }

    function test_made_up_name_that_is_an_isogram() {
        assert_equal(true, Isogram.is_isogram("Emily Jung Schwartzkopf"))
    }

    function test_duplicated_character_in_the_middle() {
        assert_equal(false, Isogram.is_isogram("accentor"))
    }

    function test_same_first_and_last_character() {
        assert_equal(false, Isogram.is_isogram("angola"))
    }

    function test_word_with_duplicated_character_and_with_two_hyphen() {
        assert_equal(false, Isogram.is_isogram("up-to-date"))
    }
}
