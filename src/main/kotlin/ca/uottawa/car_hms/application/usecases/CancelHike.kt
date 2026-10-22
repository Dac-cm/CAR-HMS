package ca.uottawa.car_hms.application.usecases

import ca.uottawa.car_hms.application.dtos.queries.CancelHikeRequest

interface CancelHike {
    fun execute(request: CancelHikeRequest)
}
