import "bootstrap";
import { initUpdateNavbarOnScroll } from '../components/navbar';
import { loadDynamicBannerText } from '../components/typed';
// initUpdateNavbarOnScroll();

// Datepicker, don't touch!!!
import flatpickr from "flatpickr";
import "flatpickr/dist/flatpickr.min.css";

flatpickr(".datepicker", {
  altInput: true
});
loadDynamicBannerText();
