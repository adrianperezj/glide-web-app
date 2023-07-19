// // app/javascript/controllers/category_controller.js
// import { Controller } from "stimulus";

// export default class extends Controller {
//   static targets = ["categorySelect", "subcategoryWrapper", "subcategorySelect"];

//   connect() {
//     console.log("is this shit connected?")
//     this.updateSubcategoryVisibility();
//   }

//   updateSubcategoryVisibility() {
//     const categoryValue = this.categorySelectTarget.value;
//     const subcategoryWrapper = this.subcategoryWrapperTarget;

//     if (categoryValue === "Public Space" || categoryValue === "Private Space") {
//       subcategoryWrapper.style.display = "block";
//     } else {
//       subcategoryWrapper.style.display = "none";
//     }

//     this.updateSubcategoryOptions();
//   }

//   updateSubcategoryOptions() {
//     const categoryValue = this.categorySelectTarget.value;
//     const subcategorySelect = this.subcategorySelectTarget;
//     const subcategories = this.getSubcategoriesForCategory(categoryValue);

//     subcategorySelect.innerHTML = "";
//     subcategories.forEach((subcategory) => {
//       const option = document.createElement("option");
//       option.value = subcategory;
//       option.textContent = subcategory;
//       subcategorySelect.appendChild(option);
//     });
//   }

//   getSubcategoriesForCategory(category) {
//     // Define the subcategories based on the selected category
//     // You can replace this with your own logic to fetch subcategories from the server or define them locally
//     if (category === "Public Space") {
//       return <%= Location::PUBLIC_SUBTYPE.to_json %>;
//     } else if (category === "Private Space") {
//       return <%= Location::PRIVATE_SUBTYPE.to_json %>;
//     } else {
//       return [];
//     }
//   }
// }
