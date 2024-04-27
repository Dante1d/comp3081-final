import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="search"
export default class extends Controller {
  static targets = ["name"];
  connect() {
  }

  filterRecipes(event) {
    const searchTerm = event.target.value.toLowerCase()

    this.nameTargets.forEach((name) => {
      const recipeName = name.textContent.toLowerCase();
      if (recipeName.includes(searchTerm)) {
        name.parentElement.style.display = "";
      } else {
        name.parentElement.style.display = "none";
      }
    });
  }
}
