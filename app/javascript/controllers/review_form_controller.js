import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["section", "actionButton"]

  connect() {
    this.currentSectionIndex = 0
    this.sections = Array.from(this.sectionTargets)
    //this.updateProgress()
  }


//   <div data-review-form-target="section" id="step-1">
//   <h2>General</h2>
//   <%= form.input :title %>
//   <%= form.input :comment, as: :text %>
//   <%= form.input :photo, as: :file %>
//   <button data-action="click->review-form#transition" data-direction="next">Next ---&gt;</button>
// </div>

// <div data-review-form-target="section" id="step-2" class="d-none">
//   <h2>Expenses</h2>
//   <%= form.input :meal_cost %>
//   <%= form.input :coffee_cost %>
//   <%= form.input :rent_cost %>
//   <%= form.input :beer_cost %>
//   <button data-action="click->review-form#transition" data-direction="next">Next ---&gt;</button>
//   <button data-action="click->review-form#transition" data-direction="previous">&lt;--- Previous</button>
// </div>

// <div data-review-form-target="section" id="step-3" class="d-none">
//   <h2>Ratings</h2>
//   <%= form.input :noise_level, collection: 1..5 %>
//   <%= form.input :safety, collection: 1..5 %>
//   <%= form.input :internet_speed, collection: 1..5 %>
//   <%= form.input :family_zone, collection: 1..5 %>
//   <%= form.input :nightlife, collection: 1..5 %>
//   <%= form.input :pet_friendly, collection: 1..5 %>
//   <%= form.input :restaurants_qty, collection: 1..5 %>
//   <%= form.input :shopping, collection: 1..5 %>
//   <%= form.input :dealer, as: :boolean %>
//   <button data-action="click->review-form#transition" data-direction="next">Next ---&gt;</button>
//   <button data-action="click->review-form#transition" data-direction="previous">&lt;--- Previous</button>
// </div>

// <div data-review-form-target="section" id="step-4" class="d-none">
//   <h2>Mobility</h2>
//   <%= form.input :metro, as: :boolean %>
//   <%= form.input :bike, as: :boolean %>
//   <%= form.input :bus, as: :boolean %>
//   <%= form.input :uber, as: :boolean %>
//   <button data-action="click->review-form#transition" data-direction="next">Next ---&gt;</button>
//   <button data-action="click->review-form#transition" data-direction="previous">&lt;--- Previous</button>
// </div>

// <div data-review-form-target="section" id="step-5" class="d-none">
//   <h2>Success</h2>
//   <p>Your review has been submitted successfully.</p>
//   <%= form.button :submit, class: 'btn btn-primary' %>
//   <%= link_to 'Go Back', location_path(@location), class: 'btn btn-secondary' %>
// </div>


  transition(event) {
    event.preventDefault()
    const button = event.currentTarget
    const direction = button.dataset.direction
    const nextSectionIndex = this.calculateNextSectionIndex(direction)
    this.hideCurrentSection()
    this.showNextSection(nextSectionIndex)
    this.currentSectionIndex = nextSectionIndex
    // this.updateProgress()
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

//   //updateProgress() {
//    // const progress = this.progressTarget
//     const totalSections = this.sections.length
//     const completedSections = this.currentSectionIndex + 1
//     const progressPercentage = (completedSections / totalSections) * 100
//     progress.style.width = `${progressPercentage}%`
//   }
}
