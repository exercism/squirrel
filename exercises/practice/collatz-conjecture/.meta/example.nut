Collatz <- class {}

Collatz.steps <- function(n) {
    if(n <= 0) {
        throw "Only positive integers are allowed"
    }

    local steps = 0
    while(n != 1) {
        n = (n % 2 == 0) ? n / 2 : n * 3 + 1
        steps++
    }

    return steps
}
