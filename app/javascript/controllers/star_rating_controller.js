import { Controller } from "@hotwired/stimulus"
import StarRating from "star-rating.js"

export default class extends Controller {
  connect() {
    console.log(this.element)
    new StarRating(this.element)
  }
}