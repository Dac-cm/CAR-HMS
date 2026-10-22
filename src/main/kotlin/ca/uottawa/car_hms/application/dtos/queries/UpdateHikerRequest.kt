package ca.uottawa.car_hms.application.dtos.queries

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
    val organizerCertificationIssueDate: String? = null,
    val organizerCertificationExpiryDate: String? = null,
    val organizerLevel: String? = null
)
