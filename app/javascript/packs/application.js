import 'bootstrap';
import "../plugins/flatpickr"
import { initMap } from 'components/maps';
// [...]

import { initUpdateNavbarOnScroll } from '../components/navbar';
initUpdateNavbarOnScroll();

import { autocomplete } from 'components/autocomplete';
import { initSkillChoice } from 'components/skill_choice';
// [...]
autocomplete();
initMap();
initSkillChoice();
