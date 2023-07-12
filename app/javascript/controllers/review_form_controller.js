import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["section", "progress"]

  connect() {
    this.currentSectionIndex = 0
    this.sections = Array.from(this.sectionTargets)
    this.updateProgress()
    console.log("Hello, Stimulus!", this.element)
  }

  transition(event) {
    event.preventDefault()
    const button = event.currentTarget
    const direction = button.dataset.direction
    const nextSectionIndex = this.calculateNextSectionIndex(direction)
    this.hideCurrentSection()
    this.showNextSection(nextSectionIndex)
    this.currentSectionIndex = nextSectionIndex
    this.updateProgress()
    console.log("Hello, Stimulus again!", this.element)
  }

  hideCurrentSection() {
    const currentSection = this.sections[this.currentSectionIndex]
    currentSection.classList.add("d-none")
  }

  showNextSection(nextSectionIndex) {
    const nextSection = this.sections[nextSectionIndex]
    nextSection.classList.remove("d-none")
    console.log("Hello, Stimulus yet again MF!", this.element)
  }

  calculateNextSectionIndex(direction) {
    if (direction === "next") {
      return this.currentSectionIndex + 1
    } else if (direction === "previous") {
      return this.currentSectionIndex - 1
    }
  }

  updateProgress() {
    const progress = this.progressTarget
    const totalSections = this.sections.length
    const completedSections = this.currentSectionIndex + 1
    const progressPercentage = (completedSections / totalSections) * 100
    progress.style.width = `${progressPercentage}%`
  }
}
