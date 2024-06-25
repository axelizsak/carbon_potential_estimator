use carbon_potential_estimator::estimator::{compute_carbon_stock, _input};
use cubit::f64::types::fixed::Fixed;

#[starknet::interface]
trait IPotentialCarbon<TContractState> {
    fn potential_carbon(ref self: TContractState, c_input: _input) -> Fixed;

    fn get_potential_carbon(self: @TContractState) -> Fixed;
}

#[starknet::contract]
mod Estimator {
    use carbon_potential_estimator::estimator::{compute_carbon_stock, _input};
    use cubit::f64::types::fixed::Fixed;

    #[storage]
    struct Storage {
        stored_data: Fixed,
    }

    #[abi(embed_v0)]
    impl CarbonStorage of super::IPotentialCarbon<ContractState> {
        fn potential_carbon(ref self: ContractState, c_input: _input) -> Fixed {
            let result = compute_carbon_stock(c_input);
            self.stored_data.write(result);
            result
        }

        fn get_potential_carbon(self: @ContractState) -> Fixed {
            self.stored_data.read()
        }
    }
}
