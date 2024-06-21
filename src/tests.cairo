use carbon_potential_estimator::ipcc::{DB, get_data};
use carbon_potential_estimator::estimator::{compute_carbon_stock, _input};
use cubit::f64::types::fixed::{FixedTrait, Fixed};

fn fixed_eq(a: Fixed, b: Fixed) -> bool {
    a.mag == b.mag && a.sign == b.sign
}

fn fixed_ne(a: Fixed, b: Fixed) -> bool {
    !fixed_eq(a, b)
}

fn print_fixed(f: Fixed) {
    println!("Fixed {{ mag: {}, sign: {} }}", f.mag, f.sign);
}

#[test]
fn test_db() {
    let france: felt252 = 'France';
    let france_data: DB = get_data(france);
    assert!(france_data.biomass == 92);
    assert!(france_data.biomass != 134);

    let germany: felt252 = 'Germany';
    let germany_data: DB = get_data(germany);
    assert!(germany_data.biomass == 134);
    assert!(germany_data.biomass != 92);

    let unknown: felt252 = 'Unknown Country';
    let unknown_db: DB = get_data(unknown);
    assert!(unknown_db.biomass == 0);
}

#[test]
fn test_compute_carbon_stock() {
    let input = _input {
        Air: FixedTrait::new_unscaled(4, false),
        duration: FixedTrait::new_unscaled(30, false),
        country: 'Costa Rica'.into()
    };

    let result = compute_carbon_stock(input);
    print_fixed(result);
    let expected_result = FixedTrait::new_unscaled(17061, false)
        / FixedTrait::new_unscaled(10, false);
    assert!(fixed_eq(result, expected_result));
}
