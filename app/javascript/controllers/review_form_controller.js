import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["section", "actionButton", "progressBar"]

  connect() {
    this.currentSectionIndex = 0
    this.sections = Array.from(this.sectionTargets)
    this.updateProgress()
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
  }

  hideCurrentSection() {
    const currentSection = this.sections[this.currentSectionIndex]
    currentSection.classList.add("d-none")
  }

  showNextSection(nextSectionIndex) {
    const nextSection = this.sections[nextSectionIndex]
    nextSection.classList.remove("d-none")
    if (nextSection.id === "submit") {
      this.sections.forEach((section) => {
        section.classList.remove("d-none")
      })
      this.actionButtonTargets.forEach((button) => {
        button.classList.add("d-none")
      })
    }
  }

  calculateNextSectionIndex(direction) {
    if (direction === "next") {
      return this.currentSectionIndex + 1
    } else if (direction === "previous") {
      return this.currentSectionIndex - 1
    }
  }

  updateProgress() {
    const progress = this.progressBarTarget
    const totalSections = this.sections.length
    const completedSections = this.currentSectionIndex + 1
    const progressPercentage = (completedSections / totalSections) * 100
    progress.style.width = `${progressPercentage}%`
    }
  }
