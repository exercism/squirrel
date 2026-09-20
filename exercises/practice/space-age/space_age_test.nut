dofile("space_age.nut")

SpaceTest <- class extends Test {
    function test_age_on_earth() {
        assert_equal(31.69, Space.age("earth", 1000000000))
    }

    function test_age_on_mercury() {
        assert_equal(280.88, Space.age("mercury", 2134835688))
    }

    function test_age_on_venus() {
        assert_equal(9.78, Space.age("venus", 189839836))
    }

    function test_age_on_mars() {
        assert_equal(35.88, Space.age("mars", 2129871239))
    }

    function test_age_on_jupiter() {
        assert_equal(2.41, Space.age("jupiter", 901876382))
    }

    function test_age_on_saturn() {
        assert_equal(2.15, Space.age("saturn", 2000000000))
    }

    function test_age_on_uranus() {
        assert_equal(0.46, Space.age("uranus", 1210123456))
    }

    function test_age_on_neptune() {
        assert_equal(0.35, Space.age("neptune", 1821023456))
    }

    function test_invalid_planet_causes_error() {
        try {
            Space.age("Sun", 680804807)
        } catch(e) {
            assert_equal("not a planet", e)
        }
    }
}
