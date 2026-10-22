package ca.uottawa.car_hms.application.usecases

import ca.uottawa.car_hms.application.dtos.queries.CancelSignUpRequest

interface CancelSignUp {
    fun execute(request: CancelSignUpRequest)
}
