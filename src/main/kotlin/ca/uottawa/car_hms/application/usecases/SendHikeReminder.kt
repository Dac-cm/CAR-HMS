package ca.uottawa.car_hms.application.usecases

import ca.uottawa.car_hms.application.dtos.queries.SendHikeReminderRequest

interface SendHikeReminder {
    fun execute(request: SendHikeReminderRequest)
}
