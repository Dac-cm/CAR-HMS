package ca.uottawa.car_hms.application.dtos.queries

import java.time.LocalDate

data class BrowseHikesRequest(
    val trailName: String? = null,
    val date: LocalDate? = null,
    val difficulty: String? = null,
    val hikerId: String? = null
)
