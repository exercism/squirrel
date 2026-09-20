Nucleotide <- class {}

Nucleotide.count <- function(strand) {
    local counts = {
        A = 0,
        C = 0,
        G = 0,
        T = 0
    }
    foreach(n in strand) {
        local letter = n.tochar()
        if(!(letter in counts)) {
            throw "Invalid nucleotide in strand"
        }

        counts[letter]++
    }

    return counts
}
