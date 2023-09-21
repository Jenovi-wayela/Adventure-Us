// app/javascript/controllers/location_autocomplete_controller.js
import { Controller } from "@hotwired/stimulus"
import MapboxGeocoder from "@mapbox/mapbox-gl-geocoder"

// Connects to data-controller="location-autocomplete"
export default class extends Controller {
  static values = { apiKey: String }

  static targets = ["location"]

  connect() {
    this.geocoder = new MapboxGeocoder({
      accessToken: this.apiKeyValue,
      types: "country,region,place,postcode,locality,neighborhood,location"
    })
    this.geocoder.addTo(this.element)
  }

  disconnect() {
    this.geocoder.onRemove()
  }
}
