Space <- class {}

earth_to_other_planet <- {
    mercury = 0.2408467,
    venus = 0.61519726,
    earth = 1,
    mars = 1.8808158,
    jupiter = 11.862615,
    saturn = 29.447498,
    uranus = 84.016846,
    neptune = 164.79132
}

round <- function(n) {
    if(n >= 0) {
        return floor(n + 0.5)
    } else {
        return ceil(n - 0.5)
    }
}

Space.age <- function(planet, seconds) {
    if(!(planet in earth_to_other_planet)) {
        throw "not a planet"
    }

    local earth_years = seconds / 31557600.0
    local years = earth_years / earth_to_other_planet[planet]
    local x = years * pow(10, 2)
    return round(x) / pow(10, 2)
}
