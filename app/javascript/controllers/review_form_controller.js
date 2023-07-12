import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["section", "progress"]

  connect() {
    this.currentSectionIndex = 0
    this.sections = Array.from(this.sectionTargets)
    this.updateProgress()

    // Hide the previous button in the first section
    this.hidePreviousButton();
  }

  transition(event) {
    event.preventDefault();
    const button = event.currentTarget;
    const direction = button.dataset.direction;
    const currentSection = button.closest(".section");
    let nextSection;

    if (direction === "next") {
      const nextSectionIndex = this.currentSectionIndex + 1;
      nextSection = this.sections[nextSectionIndex];
    } else if (direction === "previous") {
      const previousSectionIndex = this.currentSectionIndex - 1;
      nextSection = this.sections[previousSectionIndex];
    }

    currentSection.classList.add("d-none");
    nextSection.classList.remove("d-none");

    this.currentSectionIndex = Array.from(this.sections).indexOf(nextSection);

    this.updateProgress();
    this.updateButtons();
  }

  updateButtons() {
    // Show or hide previous and next buttons based on current section
    if (this.currentSectionIndex === 0) {
      this.hidePreviousButton();
    } else if (this.currentSectionIndex === this.sections.length - 1) {
      this.hideNextButton();
      this.showSubmitButton();
    } else {
      this.showPreviousButton();
      this.showNextButton();
    }
  }

  hidePreviousButton() {
    const previousButton = document.querySelector("[data-direction='previous']");
    previousButton.classList.add("d-none");
  }

  showPreviousButton() {
    const previousButton = document.querySelector("[data-direction='previous']");
    previousButton.classList.remove("d-none");
  }

  hideNextButton() {
    const nextButton = document.querySelector("[data-direction='next']");
    nextButton.classList.add("d-none");
  }

  showNextButton() {
    const nextButton = document.querySelector("[data-direction='next']");
    nextButton.classList.remove("d-none");
  }

  showSubmitButton() {
    const submitButton = document.getElementById("review-form-submit-button");
    submitButton.style.display = "inline-block";
  }

  updateProgress() {
    const progress = this.progressTarget;
    const totalSections = this.sections.length;
    const completedSections = this.currentSectionIndex + 1;
    const progressPercentage = (completedSections / totalSections) * 100;
    progress.style.width = `${progressPercentage}%`;
  }
}
