import 'bootstrap';
import { initMap } from 'components/maps';
// [...]

import { autocomplete } from 'components/autocomplete';
import { initSkillChoice } from 'components/skill_choice';
import { initFilters } from 'components/filters';
// [...]
autocomplete();
initMap();
initSkillChoice();
initFilters();
