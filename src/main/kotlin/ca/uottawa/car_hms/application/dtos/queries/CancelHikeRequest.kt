package ca.uottawa.car_hms.application.dtos.queries

data class CancelHikeRequest(
    val hikeId: String,
    val actorId: String,
    val reason: String
)
