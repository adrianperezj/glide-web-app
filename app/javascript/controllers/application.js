import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["section"]

  transition(event) {
    event.preventDefault()
    const button = event.currentTarget
    const direction = button.dataset.direction
    const currentSection = button.closest("div[id^='review-form-']")
    const nextSection = currentSection.nextElementSibling
    const previousSection = currentSection.previousElementSibling

    if (direction === "next") {
      this.hide(currentSection)
      this.show(nextSection)
    } else if (direction === "previous") {
      this.hide(currentSection)
      this.show(previousSection)
    }
  }

  hide(element) {
    element.classList.add("d-none")
  }

  show(element) {
    element.classList.remove("d-none")
  }
}
