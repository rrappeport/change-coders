function initSkillChoice() {
  document.addEventListener("DOMContentLoaded", function() {
    const skillChoices = document.querySelectorAll(".skill-choice");

    skillChoices.forEach(function(elem) {
        elem.addEventListener("click", function() {
            elem.classList.toggle("active");
        });
    });
  });
}

export {initSkillChoice};
