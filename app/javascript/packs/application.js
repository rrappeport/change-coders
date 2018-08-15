import 'bootstrap';
import "../plugins/flatpickr"
import { initMap } from 'components/maps';
// [...]

import { initUpdateNavbarOnScroll } from '../components/navbar';
initUpdateNavbarOnScroll();

import { autocomplete } from 'components/autocomplete';
import { initSkillChoice } from 'components/skill_choice';
import { subscribeForm } from 'components/footer';
import { initFilters } from 'components/filters';
// [...]
autocomplete();
initMap();
initSkillChoice();
subscribeForm();
initFilters();
