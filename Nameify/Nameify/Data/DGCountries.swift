//
//  DGCountries.swift
//  Nameify
//
//  Created by Ajay Gandecha on 9/15/22.
//

import Foundation
import MapKit

// Structure that holds data and important information on each possible response country.
struct DGCountries {
    
    // TODO: Convert this data source into a JSON file, and parse the data from that external source.
    // Data source.
    let countriesList = [
        
        DGCountry(name: "Afghanistan", code: "AF", latitude: 33.93911, longitude: 67.709953),
        DGCountry(name: "Åland Islands", code: "AX", latitude: 12.52111, longitude: 67.709953),
        DGCountry(name: "Albania", code: "AL", latitude: 41.153332, longitude: 67.709953),
        DGCountry(name: "Algeria", code: "DZ", latitude: 28.033886, longitude: 67.709953),
        DGCountry(name: "American Samoa", code: "AS", latitude: -14.270972, longitude: 67.709953),
        DGCountry(name: "Andorra", code: "AD", latitude: 42.546245, longitude: 67.709953),
        DGCountry(name: "Angola", code: "AO", latitude: -11.202692, longitude: 67.709953),
        DGCountry(name: "Anguilla", code: "AI", latitude: 18.220554, longitude: 67.709953),
        DGCountry(name: "Antarctica", code: "AQ", latitude: -75.250973, longitude: 67.709953),
        DGCountry(name: "Antigua and Barbuda", code: "AG", latitude: 17.060816, longitude: 67.709953),
        DGCountry(name: "Argentina", code: "AR", latitude: -38.416097, longitude: 67.709953),
        DGCountry(name: "Armenia", code: "AM", latitude: 40.069099, longitude: 67.709953),
        DGCountry(name: "Aruba", code: "AW", latitude: 12.52111, longitude: 67.709953),
        DGCountry(name: "Australia", code: "AU", latitude: -25.274398, longitude: 67.709953),
        DGCountry(name: "Austria", code: "AT", latitude: 47.516231, longitude: 67.709953),
        DGCountry(name: "Azerbaijan", code: "AZ", latitude: 40.143105, longitude: 67.709953),
        DGCountry(name: "Bahamas", code: "BS", latitude: 25.03428, longitude: 67.709953),
        DGCountry(name: "Bahrain", code: "BH", latitude: 25.930414, longitude: 67.709953),
        DGCountry(name: "Bangladesh", code: "BD", latitude: 23.684994, longitude: 67.709953),
        DGCountry(name: "Barbados", code: "BB", latitude: 13.193887, longitude: 67.709953),
        DGCountry(name: "Belarus", code: "BY", latitude: 53.709807, longitude: 67.709953),
        DGCountry(name: "Belgium", code: "BE", latitude: 50.503887, longitude: 67.709953),
        DGCountry(name: "Belize", code: "BZ", latitude: 17.189877, longitude: 67.709953),
        DGCountry(name: "Benin", code: "BJ", latitude: 9.30769, longitude: 67.709953),
        DGCountry(name: "Bermuda", code: "BM", latitude: 32.321384, longitude: 67.709953),
        DGCountry(name: "Bhutan", code: "BT", latitude: 27.514162, longitude: 67.709953),
        DGCountry(name: "Bolivia", code: "BO", latitude: -16.290154, longitude: 67.709953),
        DGCountry(name: "Bosnia and Herzegovina", code: "BA", latitude: 43.915886, longitude: 67.709953),
        DGCountry(name: "Botswana", code: "BW", latitude: -22.328474, longitude: 67.709953),
        DGCountry(name: "Bouvet Island", code: "BV", latitude: -54.423199, longitude: 67.709953),
        DGCountry(name: "Brazil", code: "BR", latitude: -14.235004, longitude: 67.709953),
        DGCountry(name: "British Indian Ocean Territory", code: "IO", latitude: -6.343194, longitude: 67.709953),
        DGCountry(name: "Brunei Darussalam", code: "BN", latitude: 4.535277, longitude: 67.709953),
        DGCountry(name: "Bulgaria", code: "BG", latitude: 42.733883, longitude: 67.709953),
        DGCountry(name: "Burkina Faso", code: "BF", latitude: 12.238333, longitude: 67.709953),
        DGCountry(name: "Burundi", code: "BI", latitude: -3.373056, longitude: 67.709953),
        DGCountry(name: "Cambodia", code: "KH", latitude: 12.565679, longitude: 67.709953),
        DGCountry(name: "Cameroon", code: "CM", latitude: 7.369722, longitude: 67.709953),
        DGCountry(name: "Canada", code: "CA", latitude: 56.130366, longitude: 67.709953),
        DGCountry(name: "Cape Verde", code: "CV", latitude: 16.002082, longitude: 67.709953),
        DGCountry(name: "Cayman Islands", code: "KY", latitude: 19.513469, longitude: 67.709953),
        DGCountry(name: "Central African Republic", code: "CF", latitude: 6.611111, longitude: 67.709953),
        DGCountry(name: "Chad", code: "TD", latitude: 15.454166, longitude: 67.709953),
        DGCountry(name: "Chile", code: "CL", latitude: -35.675147, longitude: 67.709953),
        DGCountry(name: "China", code: "CN", latitude: 35.86166, longitude: 67.709953),
        DGCountry(name: "Christmas Island", code: "CX", latitude: -10.447525, longitude: 67.709953),
        DGCountry(name: "Cocos DGCountry(Keeling) Islands", code: "CC", latitude: -12.164165, longitude: 67.709953),
        DGCountry(name: "Colombia", code: "CO", latitude: 4.570868, longitude: 67.709953),
        DGCountry(name: "Comoros", code: "KM", latitude: -11.875001, longitude: 67.709953),
        DGCountry(name: "Congo", code: "CG", latitude: -0.228021, longitude: 67.709953),
        DGCountry(name: "DR of the Congo", code: "CD", latitude: -4.038333, longitude: 67.709953),
        DGCountry(name: "Cook Islands", code: "CK", latitude: -21.236736, longitude: 67.709953),
        DGCountry(name: "Costa Rica", code: "CR", latitude: 9.748917, longitude: 67.709953),
        DGCountry(name: "Cote D", code: "CI", latitude: 7.539989, longitude: 67.709953),
        DGCountry(name: "Croatia", code: "HR", latitude: 45.1, longitude: 67.709953),
        DGCountry(name: "Cuba", code: "CU", latitude: 21.521757, longitude: 67.709953),
        DGCountry(name: "Cyprus", code: "CY", latitude: 35.126413, longitude: 67.709953),
        DGCountry(name: "Czech Republic", code: "CZ", latitude: 49.817492, longitude: 67.709953),
        DGCountry(name: "Denmark", code: "DK", latitude: 56.26392, longitude: 67.709953),
        DGCountry(name: "Djibouti", code: "DJ", latitude: 11.825138, longitude: 67.709953),
        DGCountry(name: "Dominica", code: "DM", latitude: 15.414999, longitude: 67.709953),
        DGCountry(name: "Dominican Republic", code: "DO", latitude: 18.735693, longitude: 67.709953),
        DGCountry(name: "Ecuador", code: "EC", latitude: -1.831239, longitude: 67.709953),
        DGCountry(name: "Egypt", code: "EG", latitude: 26.820553, longitude: 67.709953),
        DGCountry(name: "El Salvador", code: "SV", latitude: 13.794185, longitude: 67.709953),
        DGCountry(name: "Equatorial Guinea", code: "GQ", latitude: 1.650801, longitude: 67.709953),
        DGCountry(name: "Eritrea", code: "ER", latitude: 15.179384, longitude: 67.709953),
        DGCountry(name: "Estonia", code: "EE", latitude: 58.595272, longitude: 67.709953),
        DGCountry(name: "Ethiopia", code: "ET", latitude: 9.145, longitude: 67.709953),
        DGCountry(name: "Falkland Islands", code: "FK", latitude: -51.796253, longitude: 67.709953),
        DGCountry(name: "Faroe Islands", code: "FO", latitude: 61.892635, longitude: 67.709953),
        DGCountry(name: "Fiji", code: "FJ", latitude: -16.578193, longitude: 67.709953),
        DGCountry(name: "Finland", code: "FI", latitude: 61.92411, longitude: 67.709953),
        DGCountry(name: "France", code: "FR", latitude: 46.227638, longitude: 67.709953),
        DGCountry(name: "French Guiana", code: "GF", latitude: 3.933889, longitude: 67.709953),
        DGCountry(name: "French Polynesia", code: "PF", latitude: -17.679742, longitude: 67.709953),
        DGCountry(name: "French Southern Territories", code: "TF", latitude: -49.280366, longitude: 67.709953),
        DGCountry(name: "Gabon", code: "GA", latitude: -0.803689, longitude: 67.709953),
        DGCountry(name: "Gambia", code: "GM", latitude: 13.443182, longitude: 67.709953),
        DGCountry(name: "Georgia", code: "GE", latitude: 42.315407, longitude: 67.709953),
        DGCountry(name: "Germany", code: "DE", latitude: 51.165691, longitude: 67.709953),
        DGCountry(name: "Ghana", code: "GH", latitude: 7.946527, longitude: 67.709953),
        DGCountry(name: "Gibraltar", code: "GI", latitude: 36.137741, longitude: 67.709953),
        DGCountry(name: "Greece", code: "GR", latitude: 39.074208, longitude: 67.709953),
        DGCountry(name: "Greenland", code: "GL", latitude: 71.706936, longitude: 67.709953),
        DGCountry(name: "Grenada", code: "GD", latitude: 12.262776, longitude: 67.709953),
        DGCountry(name: "Guadeloupe", code: "GP", latitude: 16.995971, longitude: 67.709953),
        DGCountry(name: "Guam", code: "GU", latitude: 13.444304, longitude: 67.709953),
        DGCountry(name: "Guatemala", code: "GT", latitude: 15.783471, longitude: 67.709953),
        DGCountry(name: "Guernsey", code: "GG", latitude: 49.465691, longitude: 67.709953),
        DGCountry(name: "Guinea", code: "GN", latitude: 9.945587, longitude: 67.709953),
        DGCountry(name: "Guinea-Bissau", code: "GW", latitude: 11.803749, longitude: 67.709953),
        DGCountry(name: "Guyana", code: "GY", latitude: 4.860416, longitude: 67.709953),
        DGCountry(name: "Haiti", code: "HT", latitude: 18.971187, longitude: 67.709953),
        DGCountry(name: "Heard Island and Mcdonald Islands", code: "HM", latitude: -53.08181, longitude: 67.709953),
        DGCountry(name: "Vatican City", code: "VA", latitude: 41.902916, longitude: 67.709953),
        DGCountry(name: "Honduras", code: "HN", latitude: 15.199999, longitude: 67.709953),
        DGCountry(name: "Hong Kong", code: "HK", latitude: 22.396428, longitude: 67.709953),
        DGCountry(name: "Hungary", code: "HU", latitude: 47.162494, longitude: 67.709953),
        DGCountry(name: "Iceland", code: "IS", latitude: 64.963051, longitude: 67.709953),
        DGCountry(name: "India", code: "IN", latitude: 20.593684, longitude: 67.709953),
        DGCountry(name: "Indonesia", code: "ID", latitude: -0.789275, longitude: 67.709953),
        DGCountry(name: "Iran", code: "IR", latitude: 32.427908, longitude: 67.709953),
        DGCountry(name: "Iraq", code: "IQ", latitude: 33.223191, longitude: 67.709953),
        DGCountry(name: "Ireland", code: "IE", latitude: 53.41291, longitude: 67.709953),
        DGCountry(name: "Isle of Man", code: "IM", latitude: 54.236107, longitude: 67.709953),
        DGCountry(name: "Israel", code: "IL", latitude: 31.046051, longitude: 67.709953),
        DGCountry(name: "Italy", code: "IT", latitude: 41.87194, longitude: 67.709953),
        DGCountry(name: "Jamaica", code: "JM", latitude: 18.109581, longitude: 67.709953),
        DGCountry(name: "Japan", code: "JP", latitude: 36.204824, longitude: 67.709953),
        DGCountry(name: "Jersey", code: "JE", latitude: 49.214439, longitude: 67.709953),
        DGCountry(name: "Jordan", code: "JO", latitude: 30.585164, longitude: 67.709953),
        DGCountry(name: "Kazakhstan", code: "KZ", latitude: 48.019573, longitude: 67.709953),
        DGCountry(name: "Kenya", code: "KE", latitude: -0.023559, longitude: 67.709953),
        DGCountry(name: "Kiribati", code: "KI", latitude: -3.370417, longitude: 67.709953),
        DGCountry(name: "North Korea", code: "KP", latitude: 40.339852, longitude: 67.709953),
        DGCountry(name: "South Korea", code: "KR", latitude: 35.907757, longitude: 67.709953),
        DGCountry(name: "Kuwait", code: "KW", latitude: 29.31166, longitude: 67.709953),
        DGCountry(name: "Kyrgyzstan", code: "KG", latitude: 41.20438, longitude: 67.709953),
        DGCountry(name: "Lao People", code: "LA", latitude: 19.85627, longitude: 67.709953),
        DGCountry(name: "Latvia", code: "LV", latitude: 56.879635, longitude: 67.709953),
        DGCountry(name: "Lebanon", code: "LB", latitude: 33.854721, longitude: 67.709953),
        DGCountry(name: "Lesotho", code: "LS", latitude: -29.609988, longitude: 67.709953),
        DGCountry(name: "Liberia", code: "LR", latitude: 6.428055, longitude: 67.709953),
        DGCountry(name: "Libya", code: "LY", latitude: 26.3351, longitude: 67.709953),
        DGCountry(name: "Liechtenstein", code: "LI", latitude: 47.166, longitude: 67.709953),
        DGCountry(name: "Lithuania", code: "LT", latitude: 55.169438, longitude: 67.709953),
        DGCountry(name: "Luxembourg", code: "LU", latitude: 49.815273, longitude: 67.709953),
        DGCountry(name: "Macao", code: "MO", latitude: 22.198745, longitude: 67.709953),
        DGCountry(name: "Macedonia", code: "MK", latitude: 41.608635, longitude: 67.709953),
        DGCountry(name: "Madagascar", code: "MG", latitude: -18.766947, longitude: 67.709953),
        DGCountry(name: "Malawi", code: "MW", latitude: -13.254308, longitude: 67.709953),
        DGCountry(name: "Malaysia", code: "MY", latitude: 4.210484, longitude: 67.709953),
        DGCountry(name: "Maldives", code: "MV", latitude: 3.202778, longitude: 67.709953),
        DGCountry(name: "Mali", code: "ML", latitude: 17.570692, longitude: 67.709953),
        DGCountry(name: "Malta", code: "MT", latitude: 35.937496, longitude: 67.709953),
        DGCountry(name: "Marshall Islands", code: "MH", latitude: 7.131474, longitude: 67.709953),
        DGCountry(name: "Martinique", code: "MQ", latitude: 14.641528, longitude: 67.709953),
        DGCountry(name: "Mauritania", code: "MR", latitude: 21.00789, longitude: 67.709953),
        DGCountry(name: "Mauritius", code: "MU", latitude: -20.348404, longitude: 67.709953),
        DGCountry(name: "Mayotte", code: "YT", latitude: -12.8275, longitude: 67.709953),
        DGCountry(name: "Mexico", code: "MX", latitude: 23.634501, longitude: 67.709953),
        DGCountry(name: "Micronesia", code: "FM", latitude: 7.425554, longitude: 67.709953),
        DGCountry(name: "Moldova", code: "MD", latitude: 47.411631, longitude: 67.709953),
        DGCountry(name: "Monaco", code: "MC", latitude: 43.750298, longitude: 67.709953),
        DGCountry(name: "Mongolia", code: "MN", latitude: 46.862496, longitude: 67.709953),
        DGCountry(name: "Montserrat", code: "MS", latitude: 16.742498, longitude: 67.709953),
        DGCountry(name: "Morocco", code: "MA", latitude: 31.791702, longitude: 67.709953),
        DGCountry(name: "Mozambique", code: "MZ", latitude: -18.665695, longitude: 67.709953),
        DGCountry(name: "Myanmar", code: "MM", latitude: 21.913965, longitude: 67.709953),
        DGCountry(name: "Namibia", code: "NA", latitude: -22.95764, longitude: 67.709953),
        DGCountry(name: "Nauru", code: "NR", latitude: -0.522778, longitude: 67.709953),
        DGCountry(name: "Nepal", code: "NP", latitude: 28.394857, longitude: 67.709953),
        DGCountry(name: "Netherlands", code: "NL", latitude: 52.132633, longitude: 67.709953),
        DGCountry(name: "Netherlands Antilles", code: "AN", latitude: 12.226079, longitude: 67.709953),
        DGCountry(name: "New Caledonia", code: "NC", latitude: -20.904305, longitude: 67.709953),
        DGCountry(name: "New Zealand", code: "NZ", latitude: -40.900557, longitude: 67.709953),
        DGCountry(name: "Nicaragua", code: "NI", latitude: 12.865416, longitude: 67.709953),
        DGCountry(name: "Niger", code: "NE", latitude: 17.607789, longitude: 67.709953),
        DGCountry(name: "Nigeria", code: "NG", latitude: 9.081999, longitude: 67.709953),
        DGCountry(name: "Niue", code: "NU", latitude: -19.054445, longitude: 67.709953),
        DGCountry(name: "Norfolk Island", code: "NF", latitude: -29.040835, longitude: 67.709953),
        DGCountry(name: "Northern Mariana Islands", code: "MP", latitude: 17.33083, longitude: 67.709953),
        DGCountry(name: "Norway", code: "NO", latitude: 60.472024, longitude: 67.709953),
        DGCountry(name: "Oman", code: "OM", latitude: 21.512583, longitude: 67.709953),
        DGCountry(name: "Pakistan", code: "PK", latitude: 30.375321, longitude: 67.709953),
        DGCountry(name: "Palau", code: "PW", latitude: 7.51498, longitude: 67.709953),
        DGCountry(name: "Palestinian Territory", code: "PS", latitude: 31.952162, longitude: 67.709953),
        DGCountry(name: "Panama", code: "PA", latitude: 8.537981, longitude: 67.709953),
        DGCountry(name: "Papua New Guinea", code: "PG", latitude: -6.314993, longitude: 67.709953),
        DGCountry(name: "Paraguay", code: "PY", latitude: -23.442503, longitude: 67.709953),
        DGCountry(name: "Peru", code: "PE", latitude: -9.189967, longitude: 67.709953),
        DGCountry(name: "Philippines", code: "PH", latitude: 12.879721, longitude: 67.709953),
        DGCountry(name: "Pitcairn", code: "PN", latitude: -24.703615, longitude: 67.709953),
        DGCountry(name: "Poland", code: "PL", latitude: 51.919438, longitude: 67.709953),
        DGCountry(name: "Portugal", code: "PT", latitude: 39.399872, longitude: 67.709953),
        DGCountry(name: "Puerto Rico", code: "PR", latitude: 18.220833, longitude: 67.709953),
        DGCountry(name: "Qatar", code: "QA", latitude: 25.354826, longitude: 67.709953),
        DGCountry(name: "Reunion", code: "RE", latitude: -21.115141, longitude: 67.709953),
        DGCountry(name: "Romania", code: "RO", latitude: 45.943161, longitude: 67.709953),
        DGCountry(name: "Russian Federation", code: "RU", latitude: 61.52401, longitude: 67.709953),
        DGCountry(name: "RWANDA", code: "RW", latitude: -1.940278, longitude: 67.709953),
        DGCountry(name: "Saint Helena", code: "SH", latitude: -24.143474, longitude: 67.709953),
        DGCountry(name: "Saint Kitts and Nevis", code: "KN", latitude: 17.357822, longitude: 67.709953),
        DGCountry(name: "Saint Lucia", code: "LC", latitude: 13.909444, longitude: 67.709953),
        DGCountry(name: "Saint Pierre and Miquelon", code: "PM", latitude: 46.941936, longitude: 67.709953),
        DGCountry(name: "Saint Vincent and the Grenadines", code: "VC", latitude: 12.984305, longitude: 67.709953),
        DGCountry(name: "Samoa", code: "WS", latitude: -13.759029, longitude: 67.709953),
        DGCountry(name: "San Marino", code: "SM", latitude: 43.94236, longitude: 67.709953),
        DGCountry(name: "Sao Tome and Principe", code: "ST", latitude: 0.18636, longitude: 67.709953),
        DGCountry(name: "Saudi Arabia", code: "SA", latitude: 23.885942, longitude: 67.709953),
        DGCountry(name: "Senegal", code: "SN", latitude: 14.497401, longitude: 67.709953),
        DGCountry(name: "Serbia and Montenegro", code: "CS", latitude: 9.748917, longitude: 67.709953),
        DGCountry(name: "Seychelles", code: "SC", latitude: -4.679574, longitude: 67.709953),
        DGCountry(name: "Sierra Leone", code: "SL", latitude: 8.460555, longitude: 67.709953),
        DGCountry(name: "Singapore", code: "SG", latitude: 1.352083, longitude: 67.709953),
        DGCountry(name: "Slovakia", code: "SK", latitude: 48.669026, longitude: 67.709953),
        DGCountry(name: "Slovenia", code: "SI", latitude: 46.151241, longitude: 67.709953),
        DGCountry(name: "Solomon Islands", code: "SB", latitude: -9.64571, longitude: 67.709953),
        DGCountry(name: "Somalia", code: "SO", latitude: 5.152149, longitude: 67.709953),
        DGCountry(name: "South Africa", code: "ZA", latitude: -30.559482, longitude: 67.709953),
        DGCountry(name: "South Georgia and the South Sandwich Islands", code: "GS", latitude: -54.429579, longitude: 67.709953),
        DGCountry(name: "Spain", code: "ES", latitude: 40.463667, longitude: 67.709953),
        DGCountry(name: "Sri Lanka", code: "LK", latitude: 7.873054, longitude: 67.709953),
        DGCountry(name: "Sudan", code: "SD", latitude: 12.862807, longitude: 67.709953),
        DGCountry(name: "Suriname", code: "SR", latitude: 3.919305, longitude: 67.709953),
        DGCountry(name: "Svalbard and Jan Mayen", code: "SJ", latitude: 77.553604, longitude: 67.709953),
        DGCountry(name: "Swaziland", code: "SZ", latitude: -26.522503, longitude: 67.709953),
        DGCountry(name: "Sweden", code: "SE", latitude: 60.128161, longitude: 67.709953),
        DGCountry(name: "Switzerland", code: "CH", latitude: 46.818188, longitude: 67.709953),
        DGCountry(name: "Syrian Arab Republic", code: "SY", latitude: 34.802075, longitude: 67.709953),
        DGCountry(name: "Taiwan", code: "TW", latitude: 23.69781, longitude: 67.709953),
        DGCountry(name: "Tajikistan", code: "TJ", latitude: 38.861034, longitude: 67.709953),
        DGCountry(name: "Tanzania", code: "TZ", latitude: -6.369028, longitude: 67.709953),
        DGCountry(name: "Thailand", code: "TH", latitude: 15.870032, longitude: 67.709953),
        DGCountry(name: "Timor-Leste", code: "TL", latitude: -8.874217, longitude: 67.709953),
        DGCountry(name: "Togo", code: "TG", latitude: 8.619543, longitude: 67.709953),
        DGCountry(name: "Tokelau", code: "TK", latitude: -8.967363, longitude: 67.709953),
        DGCountry(name: "Tonga", code: "TO", latitude: -21.178986, longitude: 67.709953),
        DGCountry(name: "Trinidad and Tobago", code: "TT", latitude: 10.691803, longitude: 67.709953),
        DGCountry(name: "Tunisia", code: "TN", latitude: 33.886917, longitude: 67.709953),
        DGCountry(name: "Turkey", code: "TR", latitude: 38.963745, longitude: 67.709953),
        DGCountry(name: "Turkmenistan", code: "TM", latitude: 38.969719, longitude: 67.709953),
        DGCountry(name: "Turks and Caicos Islands", code: "TC", latitude: 21.694025, longitude: 67.709953),
        DGCountry(name: "Tuvalu", code: "TV", latitude: -7.109535, longitude: 67.709953),
        DGCountry(name: "Uganda", code: "UG", latitude: 1.373333, longitude: 67.709953),
        DGCountry(name: "Ukraine", code: "UA", latitude: 48.379433, longitude: 67.709953),
        DGCountry(name: "United Arab Emirates", code: "AE", latitude: 23.424076, longitude: 67.709953),
        DGCountry(name: "United Kingdom", code: "GB", latitude: 55.378051, longitude: 67.709953),
        DGCountry(name: "United States", code: "US", latitude: 37.09024, longitude: 67.709953),
        DGCountry(name: "United States M.O.I.", code: "UM", latitude: 0, longitude: 67.709953),
        DGCountry(name: "Uruguay", code: "UY", latitude: -32.522779, longitude: 67.709953),
        DGCountry(name: "Uzbekistan", code: "UZ", latitude: 41.377491, longitude: 67.709953),
        DGCountry(name: "Vanuatu", code: "VU", latitude: -15.376706, longitude: 67.709953),
        DGCountry(name: "Venezuela", code: "VE", latitude: 6.42375, longitude: 67.709953),
        DGCountry(name: "Viet Nam", code: "VN", latitude: 14.058324, longitude: 67.709953),
        DGCountry(name: "British Virgin Islands", code: "VG", latitude: 18.420695, longitude: 67.709953),
        DGCountry(name: "U.S. Virgin Islands.", code: "VI", latitude: 18.335765, longitude: 67.709953),
        DGCountry(name: "Wallis and Futuna", code: "WF", latitude: -13.768752, longitude: 67.709953),
        DGCountry(name: "Western Sahara", code: "EH", latitude: 24.215527, longitude: 67.709953),
        DGCountry(name: "Yemen", code: "YE", latitude: 15.552727, longitude: 67.709953),
        DGCountry(name: "Zambia", code: "ZM", latitude: -13.133897, longitude: 67.709953),
        DGCountry(name: "Zimbabwe", code: "ZW", latitude: -19.015438, longitude: 67.709953)
    ]
    
    /**
     Function that converts a ISO country code to the name of the country.
     
     - Parameter code: The two-character ISO country code.
     - Returns the full name of the country.
     */
    func getCountryName(code: String) -> String {
        
        let filteredList = countriesList.filter{ $0.code == code }
        
        if filteredList.count > 0 {
            return filteredList[0].name
        }
        else {
            return ""
        }
    }
    
    /**
     Function that returns the location of a country.
     
     - Parameter code: The two-character ISO country code.
     - Returns latitude and longitude of a country, encapsulated in a `CLLocationCoordinate2D` object.
     */
    func getCoordinates(code: String) -> CLLocationCoordinate2D {
        
        let filteredList = countriesList.filter{ $0.code == code }
        
        if filteredList.count > 0 {
            return CLLocationCoordinate2D(latitude: filteredList[0].latitude, longitude: filteredList[0].longitude)
        }
        else {
            return CLLocationCoordinate2D(latitude: 0.0, longitude: 0.0)
        }
    }
}

// Structure that represents an individual country from the Nationalize.io API.
struct DGCountry {
    
    var name: String
    var code: String
    var latitude: Double
    var longitude: Double
}
