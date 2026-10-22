package ca.uottawa.car_hms.application.usecases

import ca.uottawa.car_hms.application.dtos.queries.BrowseHikesRequest

interface BrowseHikes {
    fun execute(request: BrowseHikesRequest): List<String>
}
