dofile("leap.nut")

LeapTest <- class extends Test {
    function test_year_not_divisible_by_4_in_common_year() {
        assert_equal(false, Leap.is_leap(2015))
    }

    function test_year_divisible_by_2_not_divisible_by_4_in_common_year() {
        assert_equal(false, Leap.is_leap(1970))
    }

    function test_year_divisible_by_4_not_divisible_by_100_in_leap_year() {
        assert_equal(true, Leap.is_leap(1996))
    }

    function test_year_divisible_by_100_not_divisible_by_400_in_common_year() {
        assert_equal(false, Leap.is_leap(2100))
    }

    function test_year_divisible_by_100_but_not_by_3_is_still_not_a_leap_year() {
        assert_equal(false, Leap.is_leap(1900))
    }

    function test_year_divisible_by_400_in_leap_year() {
        assert_equal(true, Leap.is_leap(2000))
    }

    function test_year_divisible_by_400_but_not_by_125_is_still_a_leap_year() {
        assert_equal(true, Leap.is_leap(2400))
    }

    function test_year_divisible_by_200_not_divisible_by_400_in_common_year() {
        assert_equal(false, Leap.is_leap(1800))
    }
}
