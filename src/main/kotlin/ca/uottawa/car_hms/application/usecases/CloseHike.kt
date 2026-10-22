package ca.uottawa.car_hms.application.usecases

import ca.uottawa.car_hms.application.dtos.queries.CloseHikeRequest

interface CloseHike {
    fun execute(request: CloseHikeRequest)
}
