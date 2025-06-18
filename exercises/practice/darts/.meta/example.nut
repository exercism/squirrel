Darts <- class {}

local distance_to_score = [
    { distance = 1, score = 10 },
    { distance = 5, score = 5 },
    { distance = 10, score = 1 },
]

Darts.score <- function(x, y) {
    local distance_squared = x * x + y * y
    foreach(entry in distance_to_score) {
        if(distance_squared <= entry["distance"] * entry["distance"]) {
            return entry["score"]
        }
    }

    return 0
}
