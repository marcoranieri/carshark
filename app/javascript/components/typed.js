import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#searchbar', {
    strings: ["Ferrari", "Porche", "Maserati", "Bugatti", "Fiat", "Lamborghini", "Bentley", "Pandino Sport 4x4"],
    typeSpeed: 100,
    loop: true
  });
}

export { loadDynamicBannerText };
