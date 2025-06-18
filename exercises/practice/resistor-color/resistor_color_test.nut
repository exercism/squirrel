dofile("resistor_color.nut")

ResistorTest <- class extends Test {
    function test_color_code_black() {
        assert_equal(0, Resistor.color_code(Colors.black))
    }

    function test_color_code_brown() {
        assert_equal(1, Resistor.color_code(Colors.brown))
    }

    function test_color_code_red() {
        assert_equal(2, Resistor.color_code(Colors.red))
    }

    function test_color_code_orange() {
        assert_equal(3, Resistor.color_code(Colors.orange))
    }

    function test_color_code_yellow() {
        assert_equal(4, Resistor.color_code(Colors.yellow))
    }

    function test_color_code_green() {
        assert_equal(5, Resistor.color_code(Colors.green))
    }

    function test_color_code_blue() {
        assert_equal(6, Resistor.color_code(Colors.blue))
    }

    function test_color_code_violet() {
        assert_equal(7, Resistor.color_code(Colors.violet))
    }

    function test_color_code_grey() {
        assert_equal(8, Resistor.color_code(Colors.grey))
    }

    function test_color_code_white() {
        assert_equal(9, Resistor.color_code(Colors.white))
    }
}
