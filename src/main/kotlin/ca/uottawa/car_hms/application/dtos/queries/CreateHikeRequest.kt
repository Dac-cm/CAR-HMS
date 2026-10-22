
package ca.uottawa.car_hms.application.dtos.queries

import java.time.LocalDate
import java.time.LocalTime
import java.time.LocalDateTime

data class CreateHikeRequest(
    val organizerId: String,
    val title: String,
    val description: String,
    val trailId: String,
    val date: LocalDate,
    val startTime: LocalTime,
    val durationMinutes: Int,
    val registrationDeadline: LocalDateTime,
    val capacity: Int
)
