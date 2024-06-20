// TABLE 3A.1.4 https://www.ipcc.ch/site/assets/uploads/2018/03/GPG_LULUCF_FULLEN.pdf

pub struct DB {
    pub biomass: u64
// more value comming
}

type selfName = felt252;

pub fn get_data(self: selfName) -> DB {
    self.into()
}

impl selfIntoDBImpl of Into<selfName, DB> {
    fn into(self: selfName) -> DB {
        if (self == 'Algeria') {
            DB { biomass: 75 }
        } else if (self == 'Angola') {
            DB { biomass: 54 }
        } else if (self == 'Benin') {
            DB { biomass: 195 }
        } else if (self == 'Botswana') {
            DB { biomass: 63 }
        } else if (self == 'Burkina Faso') {
            DB { biomass: 16 }
        } else if (self == 'Burundi') {
            DB { biomass: 187 }
        } else if (self == 'Cameroon') {
            DB { biomass: 131 }
        } else if (self == 'Cape Verde') {
            DB { biomass: 127 }
        } else if (self == 'Central African Republic') {
            DB { biomass: 113 }
        } else if (self == 'Chad') {
            DB { biomass: 16 }
        } else if (self == 'Comoros') {
            DB { biomass: 65 }
        } else if (self == 'Congo') {
            DB { biomass: 213 }
        } else if (self == 'Cote d\'Ivoire') {
            DB { biomass: 130 }
        } else if (self == 'Dem. Rep. of the Congo') {
            DB { biomass: 225 }
        } else if (self == 'Djibouti') {
            DB { biomass: 46 }
        } else if (self == 'Egypt') {
            DB { biomass: 106 }
        } else if (self == 'Equatorial Guinea') {
            DB { biomass: 158 }
        } else if (self == 'Eritrea') {
            DB { biomass: 32 }
        } else if (self == 'Ethiopia') {
            DB { biomass: 79 }
        } else if (self == 'Gabon') {
            DB { biomass: 137 }
        } else if (self == 'Gambia') {
            DB { biomass: 22 }
        } else if (self == 'Ghana') {
            DB { biomass: 88 }
        } else if (self == 'Guinea') {
            DB { biomass: 114 }
        } else if (self == 'Guinea-Bissau') {
            DB { biomass: 20 }
        } else if (self == 'Kenya') {
            DB { biomass: 48 }
        } else if (self == 'Lesotho') {
            DB { biomass: 34 }
        } else if (self == 'Liberia') {
            DB { biomass: 196 }
        } else if (self == 'Libyan Arab Jamahiriya') {
            DB { biomass: 20 }
        } else if (self == 'Madagascar') {
            DB { biomass: 194 }
        } else if (self == 'Malawi') {
            DB { biomass: 143 }
        } else if (self == 'Mali') {
            DB { biomass: 31 }
        } else if (self == 'Mauritania') {
            DB { biomass: 6 }
        } else if (self == 'Mauritius') {
            DB { biomass: 95 }
        } else if (self == 'Morocco') {
            DB { biomass: 41 }
        } else if (self == 'Mozambique') {
            DB { biomass: 55 }
        } else if (self == 'Namibia') {
            DB { biomass: 12 }
        } else if (self == 'Niger') {
            DB { biomass: 4 }
        } else if (self == 'Nigeria') {
            DB { biomass: 184 }
        } else if (self == 'Reunion') {
            DB { biomass: 160 }
        } else if (self == 'Rwanda') {
            DB { biomass: 187 }
        } else if (self == 'Saint Helena') {
            DB { biomass: 0 }
        } else if (self == 'Sao Tome and Principe') {
            DB { biomass: 116 }
        } else if (self == 'Senegal') {
            DB { biomass: 30 }
        } else if (self == 'Seychelles') {
            DB { biomass: 49 }
        } else if (self == 'Sierra Leone') {
            DB { biomass: 139 }
        } else if (self == 'Somalia') {
            DB { biomass: 26 }
        } else if (self == 'South Africa') {
            DB { biomass: 81 }
        } else if (self == 'Sudan') {
            DB { biomass: 12 }
        } else if (self == 'Swaziland') {
            DB { biomass: 115 }
        } else if (self == 'Togo') {
            DB { biomass: 155 }
        } else if (self == 'Tunisia') {
            DB { biomass: 27 }
        } else if (self == 'Uganda') {
            DB { biomass: 163 }
        } else if (self == 'United Republic of Tanzania') {
            DB { biomass: 60 }
        } else if (self == 'Western Sahara') {
            DB { biomass: 59 }
        } else if (self == 'Zambia') {
            DB { biomass: 104 }
        } else if (self == 'Zimbabwe') {
            DB { biomass: 56 }
        } else if (self == 'Afghanistan') {
            DB { biomass: 27 }
        } else if (self == 'Armenia') {
            DB { biomass: 66 }
        } else if (self == 'Azerbaijan') {
            DB { biomass: 105 }
        } else if (self == 'Bahrain') {
            DB { biomass: 14 }
        } else if (self == 'Bangladesh') {
            DB { biomass: 39 }
        } else if (self == 'Bhutan') {
            DB { biomass: 178 }
        } else if (self == 'Brunei Darussalam') {
            DB { biomass: 205 }
        } else if (self == 'Cambodia') {
            DB { biomass: 69 }
        } else if (self == 'China') {
            DB { biomass: 61 }
        } else if (self == 'Cyprus') {
            DB { biomass: 21 }
        } else if (self == 'Dem People\'s Rep. of Korea') {
            DB { biomass: 25 }
        } else if (self == 'East Timor') {
            DB { biomass: 136 }
        } else if (self == 'Georgia') {
            DB { biomass: 97 }
        } else if (self == 'India') {
            DB { biomass: 73 }
        } else if (self == 'Indonesia') {
            DB { biomass: 136 }
        } else if (self == 'Iran, Islamic Rep.') {
            DB { biomass: 149 }
        } else if (self == 'Iraq') {
            DB { biomass: 28 }
        } else if (self == 'Israel') {
            DB { biomass: 0 }
        } else if (self == 'Japan') {
            DB { biomass: 88 }
        } else if (self == 'Jordan') {
            DB { biomass: 37 }
        } else if (self == 'Kazakhstan') {
            DB { biomass: 18 }
        } else if (self == 'Kuwait') {
            DB { biomass: 21 }
        } else if (self == 'Kyrgyzstan') {
            DB { biomass: 0 }
        } else if (self == 'Lao People\'s Dem. Rep') {
            DB { biomass: 31 }
        } else if (self == 'Lebanon') {
            DB { biomass: 22 }
        } else if (self == 'Malaysia') {
            DB { biomass: 205 }
        } else if (self == 'Maldives') {
            DB { biomass: 0 }
        } else if (self == 'Mongolia') {
            DB { biomass: 80 }
        } else if (self == 'Myanmar') {
            DB { biomass: 57 }
        } else if (self == 'Nepal') {
            DB { biomass: 109 }
        } else if (self == 'Oman') {
            DB { biomass: 17 }
        } else if (self == 'Pakistan') {
            DB { biomass: 27 }
        } else if (self == 'Philippines') {
            DB { biomass: 114 }
        } else if (self == 'Qatar') {
            DB { biomass: 12 }
        } else if (self == 'Republic of Korea') {
            DB { biomass: 36 }
        } else if (self == 'Saudi Arabia') {
            DB { biomass: 12 }
        } else if (self == 'Singapore') {
            DB { biomass: 205 }
        } else if (self == 'Sri Lanka') {
            DB { biomass: 59 }
        } else if (self == 'Syrian Arab Rep.') {
            DB { biomass: 28 }
        } else if (self == 'Tajikistan') {
            DB { biomass: 10 }
        } else if (self == 'Thailand') {
            DB { biomass: 29 }
        } else if (self == 'Turkey') {
            DB { biomass: 74 }
        } else if (self == 'Turkmenistan') {
            DB { biomass: 3 }
        } else if (self == 'United Arab Emirates') {
            DB { biomass: 0 }
        } else if (self == 'Uzbekistan') {
            DB { biomass: 6 }
        } else if (self == 'Viet Nam') {
            DB { biomass: 66 }
        } else if (self == 'West Bank') {
            DB { biomass: 0 }
        } else if (self == 'Yemen') {
            DB { biomass: 19 }
        } else if (self == 'American Samoa') {
            DB { biomass: 0 }
        } else if (self == 'Australia') {
            DB { biomass: 57 }
        } else if (self == 'Cook Islands') {
            DB { biomass: 0 }
        } else if (self == 'Fiji') {
            DB { biomass: 0 }
        } else if (self == 'French Polynesia') {
            DB { biomass: 0 }
        } else if (self == 'Guam') {
            DB { biomass: 0 }
        } else if (self == 'Kiribati') {
            DB { biomass: 0 }
        } else if (self == 'Marshall Islands') {
            DB { biomass: 0 }
        } else if (self == 'Micronesia') {
            DB { biomass: 0 }
        } else if (self == 'Nauru') {
            DB { biomass: 0 }
        } else if (self == 'New Caledonia') {
            DB { biomass: 0 }
        } else if (self == 'New Zealand') {
            DB { biomass: 217 }
        } else if (self == 'Niue') {
            DB { biomass: 0 }
        } else if (self == 'Northern Mariana Isl.') {
            DB { biomass: 0 }
        } else if (self == 'Palau') {
            DB { biomass: 0 }
        } else if (self == 'Papua New Guinea') {
            DB { biomass: 58 }
        } else if (self == 'Samoa') {
            DB { biomass: 0 }
        } else if (self == 'Solomon Islands') {
            DB { biomass: 0 }
        } else if (self == 'Tonga') {
            DB { biomass: 0 }
        } else if (self == 'Vanuatu') {
            DB { biomass: 0 }
        } else if (self == 'Albania') {
            DB { biomass: 58 }
        } else if (self == 'Andorra') {
            DB { biomass: 0 }
        } else if (self == 'Austria') {
            DB { biomass: 250 }
        } else if (self == 'Belarus') {
            DB { biomass: 80 }
        } else if (self == 'Belgium & Luxembourg') {
            DB { biomass: 101 }
        } else if (self == 'Bosnia & Herzegovina') {
            DB { biomass: 0 }
        } else if (self == 'Bulgaria') {
            DB { biomass: 76 }
        } else if (self == 'Croatia') {
            DB { biomass: 107 }
        } else if (self == 'Czech Republic') {
            DB { biomass: 125 }
        } else if (self == 'Denmark') {
            DB { biomass: 58 }
        } else if (self == 'Estonia') {
            DB { biomass: 85 }
        } else if (self == 'Finland') {
            DB { biomass: 50 }
        } else if (self == 'France') {
            DB { biomass: 92 }
        } else if (self == 'Germany') {
            DB { biomass: 134 }
        } else if (self == 'Greece') {
            DB { biomass: 25 }
        } else if (self == 'Hungary') {
            DB { biomass: 112 }
        } else if (self == 'Iceland') {
            DB { biomass: 17 }
        } else if (self == 'Ireland') {
            DB { biomass: 25 }
        } else if (self == 'Italy') {
            DB { biomass: 74 }
        } else if (self == 'Latvia') {
            DB { biomass: 93 }
        } else if (self == 'Liechtenstein') {
            DB { biomass: 119 }
        } else if (self == 'Lithuania') {
            DB { biomass: 99 }
        } else if (self == 'Malta') {
            DB { biomass: 0 }
        } else if (self == 'Netherlands') {
            DB { biomass: 107 }
        } else if (self == 'Norway') {
            DB { biomass: 49 }
        } else if (self == 'Poland') {
            DB { biomass: 94 }
        } else if (self == 'Portugal') {
            DB { biomass: 33 }
        } else if (self == 'Republic of Moldova') {
            DB { biomass: 64 }
        } else if (self == 'Romania') {
            DB { biomass: 124 }
        } else if (self == 'Russian Federation') {
            DB { biomass: 56 }
        } else if (self == 'San Marino') {
            DB { biomass: 0 }
        } else if (self == 'Slovakia') {
            DB { biomass: 142 }
        } else if (self == 'Slovenia') {
            DB { biomass: 178 }
        } else if (self == 'Spain') {
            DB { biomass: 24 }
        } else if (self == 'Sweden') {
            DB { biomass: 63 }
        } else if (self == 'Switzerland') {
            DB { biomass: 165 }
        } else if (self == 'The FYR of Macedonia') {
            DB { biomass: 0 }
        } else if (self == 'Ukraine') {
            DB { biomass: 0 }
        } else if (self == 'United Kingdom') {
            DB { biomass: 76 }
        } else if (self == 'Yugoslavia') {
            DB { biomass: 23 }
        } else if (self == 'Antigua and Barbuda') {
            DB { biomass: 210 }
        } else if (self == 'Bahamas') {
            DB { biomass: 0 }
        } else if (self == 'Barbados') {
            DB { biomass: 0 }
        } else if (self == 'Belize') {
            DB { biomass: 211 }
        } else if (self == 'Bermuda') {
            DB { biomass: 0 }
        } else if (self == 'British Virgin Islands') {
            DB { biomass: 0 }
        } else if (self == 'Canada') {
            DB { biomass: 83 }
        } else if (self == 'Cayman Islands') {
            DB { biomass: 0 }
        } else if (self == 'Costa Rica') {
            DB { biomass: 220 }
        } else if (self == 'Cuba') {
            DB { biomass: 114 }
        } else if (self == 'Dominica') {
            DB { biomass: 166 }
        } else if (self == 'Dominican Republic') {
            DB { biomass: 53 }
        } else if (self == 'El Salvador') {
            DB { biomass: 202 }
        } else if (self == 'Greenland') {
            DB { biomass: 0 }
        } else if (self == 'Grenada') {
            DB { biomass: 150 }
        } else if (self == 'Guadeloupe') {
            DB { biomass: 0 }
        } else if (self == 'Guatemala') {
            DB { biomass: 371 }
        } else if (self == 'Haiti') {
            DB { biomass: 101 }
        } else if (self == 'Honduras') {
            DB { biomass: 105 }
        } else if (self == 'Jamaica') {
            DB { biomass: 171 }
        } else if (self == 'Martinique') {
            DB { biomass: 5 }
        } else if (self == 'Mexico') {
            DB { biomass: 54 }
        } else if (self == 'Montserrat') {
            DB { biomass: 0 }
        } else if (self == 'Netherlands Antilles') {
            DB { biomass: 0 }
        } else if (self == 'Nicaragua') {
            DB { biomass: 161 }
        } else if (self == 'Panama') {
            DB { biomass: 322 }
        } else if (self == 'Puerto Rico') {
            DB { biomass: 0 }
        } else if (self == 'Saint Kitts and Nevis') {
            DB { biomass: 0 }
        } else if (self == 'Saint Lucia') {
            DB { biomass: 198 }
        } else if (self == 'Saint Pierre & Miquelon') {
            DB { biomass: 0 }
        } else if (self == 'Saint Vincent and Grenadines') {
            DB { biomass: 173 }
        } else if (self == 'Trinidad and Tobago') {
            DB { biomass: 129 }
        } else if (self == 'United States') {
            DB { biomass: 108 }
        } else if (self == 'US Virgin Islands') {
            DB { biomass: 0 }
        } else if (self == 'Argentina') {
            DB { biomass: 68 }
        } else if (self == 'Bolivia') {
            DB { biomass: 183 }
        } else if (self == 'Brazil') {
            DB { biomass: 209 }
        } else if (self == 'Chile') {
            DB { biomass: 268 }
        } else if (self == 'Colombia') {
            DB { biomass: 196 }
        } else if (self == 'Ecuador') {
            DB { biomass: 151 }
        } else if (self == 'Falkland Islands') {
            DB { biomass: 0 }
        } else if (self == 'French Guiana') {
            DB { biomass: 253 }
        } else if (self == 'Guyana') {
            DB { biomass: 253 }
        } else if (self == 'Paraguay') {
            DB { biomass: 59 }
        } else if (self == 'Peru') {
            DB { biomass: 245 }
        } else if (self == 'Suriname') {
            DB { biomass: 253 }
        } else if (self == 'Uruguay') {
            DB { biomass: 0 }
        } else if (self == 'Venezuela') {
            DB { biomass: 23 }
        } else {
            DB { biomass: 0 }
        }
    }
}
