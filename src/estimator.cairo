// Tool pour calculer le potentiel Carbone d'un projet

use cubit::f64::types::fixed::{Fixed, FixedTrait, ONE};

#[derive(Drop, Serde)]
pub struct _input {
    pub AGB: Fixed, // Above Ground Biomass
    pub Air: Fixed, // Land surface
    pub cc_ratio: Fixed, // canopy coverage as a function of total surface area
}

// Baseline Formula 
// co2_ratio * cf_ratio * AGB * BGB_ratio * Air * cc_ratio

// Constants:
// co2_ratio = 44/12 Convert Carbone into Co2
// cf_ratio = 0.47   % of biosmass that can stock carbone
// BGB_ratio = 1.25  Below Ground Biomass ratio

// Variables:
// ABG = (ABG_of_the_country + (AGB_of_climate_zone + AGB_growth * duration))/2
// --> country = input and Duration = input
// Air = input
// cc_ratio = to do, try to make an average size of the top of a tree during all the duration

fn compute_carbon(input: _input) -> Fixed {
    let co2_ratio = FixedTrait::new_unscaled(44, false) / FixedTrait::new_unscaled(12, false);
    let cf_ratio = FixedTrait::new_unscaled(47, false) / FixedTrait::new_unscaled(100, false);
    let BGB_ratio = FixedTrait::new_unscaled(125, false) / FixedTrait::new_unscaled(100, false);

    let mut result = co2_ratio * cf_ratio * BGB_ratio * input.AGB * input.Air * input.cc_ratio;
    return result;
}
