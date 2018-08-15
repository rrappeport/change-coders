import './application.css';
import 'bootstrap';
import "../plugins/flatpickr"
import { initMap } from 'components/maps';
// [...]

import { initUpdateNavbarOnScroll } from '../components/navbar';
initUpdateNavbarOnScroll();

import { autocomplete } from 'components/autocomplete';
import { initSkillChoice } from 'components/skill_choice';
import { initFilters } from 'components/filters';
import { initLightbox } from 'components/lightbox';
// [...]
initLightbox();
autocomplete();
initMap();
initSkillChoice();
initFilters();
