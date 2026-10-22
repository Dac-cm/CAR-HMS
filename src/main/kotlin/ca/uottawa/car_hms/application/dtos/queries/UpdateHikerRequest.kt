package ca.uottawa.car_hms.application.dtos.queries

import java.time.LocalDate

data class UpdateHikerRequest(
    val hikerId: String,
    val firstName: String? = null,
    val lastName: String? = null,
    val phone: String? = null,
    val address: String? = null,
    val emergencyContactName: String? = null,
    val emergencyContactPhone: String? = null,
    val membershipStatus: String? = null,
    val organizerCertificationNumber: String? = null,
    val organizerCertificationIssueDate: LocalDate? = null,
    val organizerCertificationExpiryDate: LocalDate? = null,
    val organizerLevel: String? = null
)
