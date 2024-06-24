use core::traits::Into;
use carbon_potential_estimator::ipcc::{DB, get_data};
use carbon_potential_estimator::estimator::{compute_carbon_stock, _input};
use cubit::f64::{test::helpers::assert_precise, types::fixed::{Fixed, FixedTrait}};

fn print_fixed(f: Fixed) {
    let result = f.mag / 4294967296;
    println!("The carbon potential is: {}", result);
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

// Test for Banegas Farm (4ha, 30 years, Costa Rica) --> ERS: 1573tCo2
#[test]
fn test_compute_carbon_stock_banegas_farm() {
    let input = _input {
        Air: FixedTrait::new_unscaled(4, false),
        duration: FixedTrait::new_unscaled(30, false),
        country: 'Costa Rica'.into()
    };

    let result = compute_carbon_stock(input);
    //print_fixed(result);

    let expected_result = FixedTrait::new_unscaled(17061, false)
        / FixedTrait::new_unscaled(10, false);
    assert_precise(
        result, expected_result.mag.into(), 'wrong estimation', Option::Some(4294967296)
    );
}

// Test for Las Delicias (18ha, 20 years, Panama) --> Wildsense: 4804tCo2
#[test]
fn test_compute_carbon_stock_las_delicias() {
    let input = _input {
        Air: FixedTrait::new_unscaled(18, false),
        duration: FixedTrait::new_unscaled(20, false),
        country: 'Panama'.into()
    };

    let result = compute_carbon_stock(input);
    //print_fixed(result);

    let expected_result = FixedTrait::new_unscaled(7491, false);
    assert_precise(
        result, expected_result.mag.into(), 'wrong estimation', Option::Some(4294967296)
    );
}

// Test for Karathuru (86ha, 23 years, Myanmar) --> Verra: 70000tCo2
#[test]
fn test_compute_carbon_stock_karathuru() {
    let input = _input {
        Air: FixedTrait::new_unscaled(86, false),
        duration: FixedTrait::new_unscaled(23, false),
        country: 'Myanmar'.into()
    };

    let result = compute_carbon_stock(input);
    //print_fixed(result);

    let expected_result = FixedTrait::new_unscaled(7286, false);
    assert_precise(
        result, expected_result.mag.into(), 'wrong estimation', Option::Some(4294967296)
    );
}

// Test for Manjarisoa (20ha, 20 years, Madagascar) --> Wildsense: 8000tCo2
#[test]
fn test_compute_carbon_stock_manjarisoa() {
    let input = _input {
        Air: FixedTrait::new_unscaled(20, false),
        duration: FixedTrait::new_unscaled(20, false),
        country: 'Madagascar'.into()
    };

    let result = compute_carbon_stock(input);
    //print_fixed(result);

    let expected_result = FixedTrait::new_unscaled(5014, false);
    assert_precise(
        result, expected_result.mag.into(), 'wrong estimation', Option::Some(4294967296)
    );
}
