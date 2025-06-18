dofile("darts.nut")

DartsTest <- class extends Test {
    function test_missing_target() {
        assert_equal(0, Darts.score(-9, 9))
    }

    function test_on_the_outer_circle() {
        assert_equal(1, Darts.score(0, 10))
    }

    function test_on_the_middle_circle() {
        assert_equal(5, Darts.score(-5, 0))
    }

    function test_on_the_inner_circle() {
        assert_equal(10, Darts.score(0, -1))
    }

    function test_exactly_on_centre() {
        assert_equal(10, Darts.score(0, 0))
    }

    function test_near_the_centre() {
        assert_equal(10, Darts.score(-0.1, -0.1))
    }

    function test_just_within_the_inner_circle() {
        assert_equal(10, Darts.score(0.7, 0.7))
    }

    function test_just_outside_the_inner_circle() {
        assert_equal(5, Darts.score(0.8, -0.8))
    }

    function test_just_within_the_middle_circle() {
        assert_equal(5, Darts.score(-3.5, 3.5))
    }

    function test_just_outside_the_middle_circle() {
        assert_equal(1, Darts.score(-3.6, -3.6))
    }

    function test_just_within_the_outer_circle() {
        assert_equal(1, Darts.score(-7, 7))
    }

    function test_just_outside_the_outer_circle() {
        assert_equal(0, Darts.score(7.1, -7.1))
    }

    function test_asymetric_position_between_the_inner_and_middle_circles() {
        assert_equal(5, Darts.score(0.5, -4))
    }
}
