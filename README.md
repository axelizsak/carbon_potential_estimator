## Carbon Potential Calculation

### Warning ⚠️

Work still in progress, [to test](https://sepolia.starkscan.co/contract/0x07fa33d1e9eeb01f62337106698673550b10a284b81948691547cd444b6c6376#read-write-contract-sub-write) (Sepolia).


### Introduction
This project aims to calculate the carbon potential of a forest project based on a formula. This document provides a detailed explanation of the formula used, the constants and variables involved. It's a formula derived from ERS, with its own choices for the sake of precision.


### Basic Formula
The formula to calculate the carbon potential is as follows:

```Carbon_Potential = co2_ratio x cf_ratio x BGB_ratio x AGB x Air x cc_ratio```


### Constants Used
- ```co2_ratio = 44/12``` --> Converts carbon to CO2.
  
- ```cf_ratio = 0.47``` --> Percentage of biomass that can store carbon.
  
- ```BGB_ratio = 1.25``` --> Below Ground Biomass ratio.


### Variables Used
- ```AGB (Above Ground Biomass) = (ABG_of_the_country + (AGB_of_climate_zone + (AGB_growth x duration))/2``` --> Average AGB.

  - ```AGB_of_the_country```: AGB based on the IPCC report, Table 3A.1.4.
  - ```AGB_of_climate_zone``` and ```AGB_growth```: designates the average AGB for a given climate and gives the corresponding average AGB growth. All this while distinguishing whether the forest is old or new, reference to table 4.12.
  - ```duration```: project duration in years.
  
- ```Air```: Project area in hectares (ha).

-  If duration >= 30 years ```cc_ratio = 0.9``` --> in general, after 30 years, the trees have reached their mature size and then they cover a large part of the surface area, approximately 90% here. This coverage represents the surface coverage from the top.
-  Else ```cc_ratio = (0.9 x duration)/30```--> cross product while waiting for adult size.

⚠️ **cc_ratio is not very precise the method will be improved.**


### Implementation
The user simply needs to enter the project area (Air), duration and country. These three variables are used to calculate the carbon potential of the project.

### Note
-This method still needs some improvement to gain in precision, and a final version could be an aggregator function that uses all existing formulas.

-The biomass aspect of specific forest types such as mangroves needs to be worked on, as the results obtained differ greatly from other methods.

### Source
-[IPCC report](https://www.ipcc.ch/site/assets/uploads/2018/03/GPG_LULUCF_FULLEN.pdf)

-[ERS method](https://docs.ers.org/standard1.0/m001-quantification-methodology-for-terrestrial-forests.pdf)

-[Ainur](https://github.com/julienbrs) and [Trunks](https://github.com/tekkac)'s work. 

-Table 4.12:
[![Table 4.12](https://github.com/axelizsak/carbon_potential_estimator/assets/98711930/cda8d9f3-8ab4-44b0-bdf8-884d0ab06975)](https://github.com/axelizsak/carbon_potential_estimator/assets/98711930/cda8d9f3-8ab4-44b0-bdf8-884d0ab06975)

