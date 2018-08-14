const toggleFilter = function(e) {
  const heading = e.target;
  const chevron = heading.querySelector('i');
  chevron.classList.toggle('fa-chevron-up');
  chevron.classList.toggle('fa-chevron-down');
  console.log(heading.nextSibling);
};

const initFilters = function() {
  const headings = document.querySelectorAll('.filter-heading');

  if (headings) {
    headings.forEach((heading) => {
      heading.addEventListener('click', function(e) {
        const chevron = heading.querySelector('i');
        chevron.classList.toggle('fa-chevron-up');
        chevron.classList.toggle('fa-chevron-down');
        const container = heading.parentNode.querySelector('.filter-container');
        container.classList.toggle('hidden-options');
        container.classList.toggle('active-options');
      });
    })
  }
};

export { initFilters };
