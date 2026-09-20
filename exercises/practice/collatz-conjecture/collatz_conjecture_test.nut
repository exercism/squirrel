dofile("collatz_conjecture.nut")

CollatzTest <- class extends Test {
    function test_zero_steps_for_one() {
        assert_equal(0, Collatz.steps(1))
    }

    function test_divide_if_even() {
        assert_equal(4, Collatz.steps(16))
    }

    function test_even_and_odd_steps() {
        assert_equal(152, Collatz.steps(1000000))
    }

    function test_zero_is_an_error() {
        try {
            Collatz.steps(0)
        } catch(e) {
            assert_equal("Only positive integers are allowed", e)
        }
    }

    function test_negative_value_is_an_error() {
        try {
            Collatz.steps(-15)
        } catch(e) {
            assert_equal("Only positive integers are allowed", e)
        }
    }
}
