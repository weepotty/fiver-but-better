import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="clipboard"
export default class extends Controller {
  static targets = ["confirmation"];
  connect() {
    console.log("hello");
  }

  copyToClipboard() {
    navigator.clipboard.writeText(window.location.href);
    this.confirmationTarget.classList.remove("d-none");
    const message = this.confirmationTarget;
    setTimeout(function () {
      message.classList.add("d-none");
    }, 1200);
  }
}
