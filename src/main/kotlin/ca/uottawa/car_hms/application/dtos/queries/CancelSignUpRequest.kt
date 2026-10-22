package ca.uottawa.car_hms.application.dtos.queries

data class CancelSignUpRequest(
    val hikerId: String,
    val hikeId: String
)
