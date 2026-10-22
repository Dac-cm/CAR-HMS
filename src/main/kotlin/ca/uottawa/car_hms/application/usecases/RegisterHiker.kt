package ca.uottawa.car_hms.application.usecases

import ca.uottawa.car_hms.application.dtos.queries.RegisterHikerRequest

interface RegisterHiker {
    fun execute(request: RegisterHikerRequest): String
}
