import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="clipboard"
export default class extends Controller {
  connect() {
    console.log("hello");
  }

  copyToClipboard() {
    navigator.clipboard.writeText(window.location.href);
  }
}
