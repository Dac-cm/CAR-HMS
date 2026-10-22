package ca.uottawa.car_hms.application.usecases

import ca.uottawa.car_hms.application.dtos.queries.CreateHikeRequest

interface CreateHike {
    fun execute(request: CreateHikeRequest): String
}
