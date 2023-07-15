// app/javascript/controllers/address_autocomplete_controller.js
import { Controller } from "@hotwired/stimulus"
import MapboxGeocoder from "@mapbox/mapbox-gl-geocoder"

// Connects to data-controller="address-autocomplete"
export default class extends Controller {
  static values = { apiKey: String }

  static targets = ["address", "addressAutocomplete", "mapContainer"]

  connect() {
    console.log("hello motherfucker")
    this.geocoder = new MapboxGeocoder({
      accessToken: this.apiKeyValue,
      types: "country,region,place,postcode,locality,neighborhood,address"
    })
    this.geocoder.addTo(this.element)
    this.geocoder.on("result", event => this.#setInputValue(event))
    this.geocoder.on("clear", () => this.#clearInputValue())

    const addressInput = this.addressAutocompleteTarget;
    const mapContainer = this.mapContainerTarget;
    const mapMarkers = JSON.parse(mapContainer.getAttribute("data-map-markers-value"));

    addressInput.addEventListener("change", () => {
      const address = addressInput.value;

      // Update the map markers with the new address
      mapMarkers.splice(0, mapMarkers.length, { address });
      mapContainer.setAttribute("data-map-markers-value", JSON.stringify(mapMarkers));
    })
  }

  disconnect() {
    this.geocoder.onRemove()
  }

  #setInputValue(event) {
    this.addressTarget.value = event.result["place_name"]
  }

  #clearInputValue() {
    this.addressTarget.value = ""
  }
}
