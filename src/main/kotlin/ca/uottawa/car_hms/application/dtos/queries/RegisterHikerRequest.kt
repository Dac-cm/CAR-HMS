package ca.uottawa.car_hms.application.dtos.queries

import java.time.LocalDate

data class RegisterHikerRequest(
    val invitationCode: String,
    val email: String,
    val password: String,
    val firstName: String,
    val lastName: String,
    val phone: String,
    val address: String,
    val dateOfBirth: LocalDate,
    val emergencyContactName: String,
    val emergencyContactPhone: String,
    val skillLevel: String,
    val liabilityWaiverAccepted: Boolean,
    val guardianAcceptance: Boolean = false,
    val guardianName: String? = null
)
