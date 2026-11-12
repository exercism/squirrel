Isogram <- class {}

Isogram.is_isogram <- function(word) {
    local upper = word.toupper()
    local seen = {}
    foreach(c in upper) {
        if(c >= 'A' && c <= 'Z') {
            if(c in seen) {
                return false
            }

            seen[c] <- true
        }
    }

    return true
}
