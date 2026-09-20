dofile("hello_world.nut")

HelloWorldTest <- class extends Test {
    function test_say_hi() {
        assert_equal("Hello, World!", HelloWorld.hello())
    }
}
