package ca.uottawa.car_hms.application.usecases

import ca.uottawa.car_hms.application.dtos.queries.SignUpForHikeRequest

interface SignUpForHike {
    fun execute(request: SignUpForHikeRequest): String
}
