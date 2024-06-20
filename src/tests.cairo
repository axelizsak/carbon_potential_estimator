use carbon_potential_estimator::ipcc::{DB, get_data};

#[test]
fn test_db() {
    let france: felt252 = 'France';
    let france_data: DB = get_data(france);
    assert_eq!(france_data.biomass, 92);
    assert_ne!(france_data.biomass, 134);

    let germany: felt252 = 'Germany';
    let germany_data: DB = get_data(germany);
    assert_eq!(germany_data.biomass, 134);
    assert_ne!(germany_data.biomass, 92);

    let unknown: felt252 = 'Unknown Country';
    let unknown_db: DB = get_data(unknown);
    assert_eq!(unknown_db.biomass, 0);
}
