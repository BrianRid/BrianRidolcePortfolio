import Typed from 'typed.js';

const text = document.querySelector('#banner-typed-text');

const loadDynamicBannerText = () => {
  if (text) {
    new Typed('#banner-typed-text', {
      strings: ["Fullstack Développeur", "Ruby on Rails", "React.js"],
      typeSpeed: 75,
      loop: true,
      showCursor: false
    });
  }
}

export {
  loadDynamicBannerText
};
