package ca.uottawa.car_hms.application.usecases

import ca.uottawa.car_hms.application.dtos.queries.UpdateHikerRequest

interface UpdateHiker {
    fun execute(request: UpdateHikerRequest)
}
