// import basicLightbox from 'basiclightbox';
const basicLightbox = require('basiclightbox')

const initLightbox = function() {
  const thumbnails = document.querySelectorAll('.thumbnail')

  thumbnails.forEach(function(thumbnail) {
    thumbnail.onclick = function(e) {

      const src = thumbnail.getAttribute('data-src')
      const html = '<img src="' + src + '">'

      basicLightbox.create(html).show()
    }
  })
};

export { initLightbox };
