<?php

/**
 * Get an array of countries with their details.
 *
 * @return array Array of countries with details like timezone, currency, currency code, currency symbol, country code, and phone code.
 */
function getCountries()
{
  $countries = [
    'Afghanistan' => [
      'timezone' => 'Asia/Kabul',
      'currency' => 'Afghan Afghani',
      'currency_code' => 'AFN',
      'currency_symbol' => '؋',
      'country_code' => '93',
      'phone_code' => '+93',
    ],
    'Albania' => [
      'timezone' => 'Europe/Tirane',
      'currency' => 'Albanian Lek',
      'currency_code' => 'ALL',
      'currency_symbol' => 'Lek',
      'country_code' => '355',
      'phone_code' => '+355',
    ],
    'Algeria' => [
      'timezone' => 'Africa/Algiers',
      'currency' => 'Algerian Dinar',
      'currency_code' => 'DZD',
      'currency_symbol' => 'د.ج',
      'country_code' => '213',
      'phone_code' => '+213',
    ],
    'Andorra' => [
      'timezone' => 'Europe/Andorra',
      'currency' => 'Euro',
      'currency_code' => 'EUR',
      'currency_symbol' => '€',
      'country_code' => '376',
      'phone_code' => '+376',
    ],
    'Angola' => [
      'timezone' => 'Africa/Luanda',
      'currency' => 'Angolan Kwanza',
      'currency_code' => 'AOA',
      'currency_symbol' => 'Kz',
      'country_code' => '244',
      'phone_code' => '+244',
    ],
    'Argentina' => [
      'timezone' => 'America/Argentina/Buenos_Aires',
      'currency' => 'Argentine Peso',
      'currency_code' => 'ARS',
      'currency_symbol' => '$',
      'country_code' => '54',
      'phone_code' => '+54',
    ],
    'Armenia' => [
      'timezone' => 'Asia/Yerevan',
      'currency' => 'Armenian Dram',
      'currency_code' => 'AMD',
      'currency_symbol' => '֏',
      'country_code' => '374',
      'phone_code' => '+374',
    ],
    'Australia' => [
      'timezone' => 'Australia/Sydney',
      'currency' => 'Australian Dollar',
      'currency_code' => 'AUD',
      'currency_symbol' => '$',
      'country_code' => '61',
      'phone_code' => '+61',
    ],
    'Austria' => [
      'timezone' => 'Europe/Vienna',
      'currency' => 'Euro',
      'currency_code' => 'EUR',
      'currency_symbol' => '€',
      'country_code' => '43',
      'phone_code' => '+43',
    ],
    'Azerbaijan' => [
      'timezone' => 'Asia/Baku',
      'currency' => 'Azerbaijani Manat',
      'currency_code' => 'AZN',
      'currency_symbol' => '₼',
      'country_code' => '994',
      'phone_code' => '+994',
    ],
    'Bahamas' => [
      'timezone' => 'America/Nassau',
      'currency' => 'Bahamian Dollar',
      'currency_code' => 'BSD',
      'currency_symbol' => '$',
      'country_code' => '1-242',
      'phone_code' => '+1-242',
    ],
    'Bahrain' => [
      'timezone' => 'Asia/Bahrain',
      'currency' => 'Bahraini Dinar',
      'currency_code' => 'BHD',
      'currency_symbol' => '.د.ب',
      'country_code' => '973',
      'phone_code' => '+973',
    ],
    'Bangladesh' => [
      'timezone' => 'Asia/Dhaka',
      'currency' => 'Bangladeshi Taka',
      'currency_code' => 'BDT',
      'currency_symbol' => '৳',
      'country_code' => '880',
      'phone_code' => '+880',
    ],
    'Barbados' => [
      'timezone' => 'America/Barbados',
      'currency' => 'Barbadian Dollar',
      'currency_code' => 'BBD',
      'currency_symbol' => '$',
      'country_code' => '1-246',
      'phone_code' => '+1-246',
    ],
    'Belarus' => [
      'timezone' => 'Europe/Minsk',
      'currency' => 'Belarusian Ruble',
      'currency_code' => 'BYN',
      'currency_symbol' => 'Br',
      'country_code' => '375',
      'phone_code' => '+375',
    ],
    'Belgium' => [
      'timezone' => 'Europe/Brussels',
      'currency' => 'Euro',
      'currency_code' => 'EUR',
      'currency_symbol' => '€',
      'country_code' => '32',
      'phone_code' => '+32',
    ],
    'Belize' => [
      'timezone' => 'America/Belize',
      'currency' => 'Belize Dollar',
      'currency_code' => 'BZD',
      'currency_symbol' => '$',
      'country_code' => '501',
      'phone_code' => '+501',
    ],
    'Benin' => [
      'timezone' => 'Africa/Porto-Novo',
      'currency' => 'West African CFA Franc',
      'currency_code' => 'XOF',
      'currency_symbol' => 'CFA',
      'country_code' => '229',
      'phone_code' => '+229',
    ],
    'Bhutan' => [
      'timezone' => 'Asia/Thimphu',
      'currency' => 'Bhutanese Ngultrum',
      'currency_code' => 'BTN',
      'currency_symbol' => 'Nu.',
      'country_code' => '975',
      'phone_code' => '+975',
    ],
    'Bolivia' => [
      'timezone' => 'America/La_Paz',
      'currency' => 'Bolivian Boliviano',
      'currency_code' => 'BOB',
      'currency_symbol' => 'Bs.',
      'country_code' => '591',
      'phone_code' => '+591',
    ],
    'Bosnia and Herzegovina' => [
      'timezone' => 'Europe/Sarajevo',
      'currency' => 'Bosnia and Herzegovina Convertible Mark',
      'currency_code' => 'BAM',
      'currency_symbol' => 'KM',
      'country_code' => '387',
      'phone_code' => '+387',
    ],
    'Botswana' => [
      'timezone' => 'Africa/Gaborone',
      'currency' => 'Botswana Pula',
      'currency_code' => 'BWP',
      'currency_symbol' => 'P',
      'country_code' => '267',
      'phone_code' => '+267',
    ],
    'Brazil' => [
      'timezone' => 'America/Sao_Paulo',
      'currency' => 'Brazilian Real',
      'currency_code' => 'BRL',
      'currency_symbol' => 'R$',
      'country_code' => '55',
      'phone_code' => '+55',
    ],
    'Brunei' => [
      'timezone' => 'Asia/Brunei',
      'currency' => 'Brunei Dollar',
      'currency_code' => 'BND',
      'currency_symbol' => '$',
      'country_code' => '673',
      'phone_code' => '+673',
    ],
    'Bulgaria' => [
      'timezone' => 'Europe/Sofia',
      'currency' => 'Bulgarian Lev',
      'currency_code' => 'BGN',
      'currency_symbol' => 'лв',
      'country_code' => '359',
      'phone_code' => '+359',
    ],
    'Burkina Faso' => [
      'timezone' => 'Africa/Ouagadougou',
      'currency' => 'West African CFA Franc',
      'currency_code' => 'XOF',
      'currency_symbol' => 'CFA',
      'country_code' => '226',
      'phone_code' => '+226',
    ],
    'Burundi' => [
      'timezone' => 'Africa/Bujumbura',
      'currency' => 'Burundian Franc',
      'currency_code' => 'BIF',
      'currency_symbol' => 'FBu',
      'country_code' => '257',
      'phone_code' => '+257',
    ],
    'Cambodia' => [
      'timezone' => 'Asia/Phnom_Penh',
      'currency' => 'Cambodian Riel',
      'currency_code' => 'KHR',
      'currency_symbol' => '៛',
      'country_code' => '855',
      'phone_code' => '+855',
    ],
    'Cameroon' => [
      'timezone' => 'Africa/Douala',
      'currency' => 'Central African CFA Franc',
      'currency_code' => 'XAF',
      'currency_symbol' => 'FCFA',
      'country_code' => '237',
      'phone_code' => '+237',
    ],
    'Canada' => [
      'timezone' => 'America/Toronto',
      'currency' => 'Canadian Dollar',
      'currency_code' => 'CAD',
      'currency_symbol' => '$',
      'country_code' => '1',
      'phone_code' => '+1',
    ],
    'Cape Verde' => [
      'timezone' => 'Atlantic/Cape_Verde',
      'currency' => 'Cape Verdean Escudo',
      'currency_code' => 'CVE',
      'currency_symbol' => 'Esc',
      'country_code' => '238',
      'phone_code' => '+238',
    ],
    'Central African Republic' => [
      'timezone' => 'Africa/Bangui',
      'currency' => 'Central African CFA Franc',
      'currency_code' => 'XAF',
      'currency_symbol' => 'FCFA',
      'country_code' => '236',
      'phone_code' => '+236',
    ],
    'Chad' => [
      'timezone' => 'Africa/Ndjamena',
      'currency' => 'Central African CFA Franc',
      'currency_code' => 'XAF',
      'currency_symbol' => 'FCFA',
      'country_code' => '235',
      'phone_code' => '+235',
    ],
    'Chile' => [
      'timezone' => 'America/Santiago',
      'currency' => 'Chilean Peso',
      'currency_code' => 'CLP',
      'currency_symbol' => '$',
      'country_code' => '56',
      'phone_code' => '+56',
    ],
    'China' => [
      'timezone' => 'Asia/Shanghai',
      'currency' => 'Chinese Yuan',
      'currency_code' => 'CNY',
      'currency_symbol' => '¥',
      'country_code' => '86',
      'phone_code' => '+86',
    ],
    'Colombia' => [
      'timezone' => 'America/Bogota',
      'currency' => 'Colombian Peso',
      'currency_code' => 'COP',
      'currency_symbol' => '$',
      'country_code' => '57',
      'phone_code' => '+57',
    ],
    'Comoros' => [
      'timezone' => 'Indian/Comoro',
      'currency' => 'Comorian Franc',
      'currency_code' => 'KMF',
      'currency_symbol' => 'CF',
      'country_code' => '269',
      'phone_code' => '+269',
    ],
    'Congo' => [
      'timezone' => 'Africa/Brazzaville',
      'currency' => 'Central African CFA Franc',
      'currency_code' => 'XAF',
      'currency_symbol' => 'FCFA',
      'country_code' => '242',
      'phone_code' => '+242',
    ],
    'Costa Rica' => [
      'timezone' => 'America/Costa_Rica',
      'currency' => 'Costa Rican Colón',
      'currency_code' => 'CRC',
      'currency_symbol' => '₡',
      'country_code' => '506',
      'phone_code' => '+506',
    ],
    'Croatia' => [
      'timezone' => 'Europe/Zagreb',
      'currency' => 'Croatian Kuna',
      'currency_code' => 'HRK',
      'currency_symbol' => 'kn',
      'country_code' => '385',
      'phone_code' => '+385',
    ],
    'Cuba' => [
      'timezone' => 'America/Havana',
      'currency' => 'Cuban Peso',
      'currency_code' => 'CUP',
      'currency_symbol' => '$',
      'country_code' => '53',
      'phone_code' => '+53',
    ],
    'Cyprus' => [
      'timezone' => 'Asia/Nicosia',
      'currency' => 'Euro',
      'currency_code' => 'EUR',
      'currency_symbol' => '€',
      'country_code' => '357',
      'phone_code' => '+357',
    ],
    'Czech Republic' => [
      'timezone' => 'Europe/Prague',
      'currency' => 'Czech Koruna',
      'currency_code' => 'CZK',
      'currency_symbol' => 'Kč',
      'country_code' => '420',
      'phone_code' => '+420',
    ],
    'Denmark' => [
      'timezone' => 'Europe/Copenhagen',
      'currency' => 'Danish Krone',
      'currency_code' => 'DKK',
      'currency_symbol' => 'kr',
      'country_code' => '45',
      'phone_code' => '+45',
    ],
    'Djibouti' => [
      'timezone' => 'Africa/Djibouti',
      'currency' => 'Djiboutian Franc',
      'currency_code' => 'DJF',
      'currency_symbol' => 'Fdj',
      'country_code' => '253',
      'phone_code' => '+253',
    ],
    'Dominican Republic' => [
      'timezone' => 'America/Santo_Domingo',
      'currency' => 'Dominican Peso',
      'currency_code' => 'DOP',
      'currency_symbol' => 'RD$',
      'country_code' => '1-809, 1-829, 1-849',
      'phone_code' => '+1-809, +1-829, +1-849',
    ],
    'Ecuador' => [
      'timezone' => 'America/Guayaquil',
      'currency' => 'United States Dollar',
      'currency_code' => 'USD',
      'currency_symbol' => '$',
      'country_code' => '593',
      'phone_code' => '+593',
    ],
    'Egypt' => [
      'timezone' => 'Africa/Cairo',
      'currency' => 'Egyptian Pound',
      'currency_code' => 'EGP',
      'currency_symbol' => 'E£',
      'country_code' => '20',
      'phone_code' => '+20',
    ],
    'El Salvador' => [
      'timezone' => 'America/El_Salvador',
      'currency' => 'United States Dollar',
      'currency_code' => 'USD',
      'currency_symbol' => '$',
      'country_code' => '503',
      'phone_code' => '+503',
    ],
    'Equatorial Guinea' => [
      'timezone' => 'Africa/Malabo',
      'currency' => 'Central African CFA Franc',
      'currency_code' => 'XAF',
      'currency_symbol' => 'FCFA',
      'country_code' => '240',
      'phone_code' => '+240',
    ],
    'Eritrea' => [
      'timezone' => 'Africa/Asmara',
      'currency' => 'Eritrean Nakfa',
      'currency_code' => 'ERN',
      'currency_symbol' => 'Nfk',
      'country_code' => '291',
      'phone_code' => '+291',
    ],
    'Estonia' => [
      'timezone' => 'Europe/Tallinn',
      'currency' => 'Euro',
      'currency_code' => 'EUR',
      'currency_symbol' => '€',
      'country_code' => '372',
      'phone_code' => '+372',
    ],
    'Eswatini' => [
      'timezone' => 'Africa/Mbabane',
      'currency' => 'Swazi Lilangeni',
      'currency_code' => 'SZL',
      'currency_symbol' => 'L',
      'country_code' => '268',
      'phone_code' => '+268',
    ],
    'Ethiopia' => [
      'timezone' => 'Africa/Addis_Ababa',
      'currency' => 'Ethiopian Birr',
      'currency_code' => 'ETB',
      'currency_symbol' => 'Br',
      'country_code' => '251',
      'phone_code' => '+251',
    ],
    'Fiji' => [
      'timezone' => 'Pacific/Fiji',
      'currency' => 'Fijian Dollar',
      'currency_code' => 'FJD',
      'currency_symbol' => '$',
      'country_code' => '679',
      'phone_code' => '+679',
    ],
    'Finland' => [
      'timezone' => 'Europe/Helsinki',
      'currency' => 'Euro',
      'currency_code' => 'EUR',
      'currency_symbol' => '€',
      'country_code' => '358',
      'phone_code' => '+358',
    ],
    'France' => [
      'timezone' => 'Europe/Paris',
      'currency' => 'Euro',
      'currency_code' => 'EUR',
      'currency_symbol' => '€',
      'country_code' => '33',
      'phone_code' => '+33',
    ],
    'Gabon' => [
      'timezone' => 'Africa/Libreville',
      'currency' => 'Central African CFA Franc',
      'currency_code' => 'XAF',
      'currency_symbol' => 'FCFA',
      'country_code' => '241',
      'phone_code' => '+241',
    ],
    'Gambia' => [
      'timezone' => 'Africa/Banjul',
      'currency' => 'Gambian Dalasi',
      'currency_code' => 'GMD',
      'currency_symbol' => 'D',
      'country_code' => '220',
      'phone_code' => '+220',
    ],
    'Georgia' => [
      'timezone' => 'Asia/Tbilisi',
      'currency' => 'Georgian Lari',
      'currency_code' => 'GEL',
      'currency_symbol' => '₾',
      'country_code' => '995',
      'phone_code' => '+995',
    ],
    'Germany' => [
      'timezone' => 'Europe/Berlin',
      'currency' => 'Euro',
      'currency_code' => 'EUR',
      'currency_symbol' => '€',
      'country_code' => '49',
      'phone_code' => '+49',
    ],
    'Ghana' => [
      'timezone' => 'Africa/Accra',
      'currency' => 'Ghanaian Cedi',
      'currency_code' => 'GHS',
      'currency_symbol' => '₵',
      'country_code' => '233',
      'phone_code' => '+233',
    ],
    'Greece' => [
      'timezone' => 'Europe/Athens',
      'currency' => 'Euro',
      'currency_code' => 'EUR',
      'currency_symbol' => '€',
      'country_code' => '30',
      'phone_code' => '+30',
    ],
    'Grenada' => [
      'timezone' => 'America/Grenada',
      'currency' => 'East Caribbean Dollar',
      'currency_code' => 'XCD',
      'currency_symbol' => '$',
      'country_code' => '1-473',
      'phone_code' => '+1-473',
    ],
    'Guatemala' => [
      'timezone' => 'America/Guatemala',
      'currency' => 'Guatemalan Quetzal',
      'currency_code' => 'GTQ',
      'currency_symbol' => 'Q',
      'country_code' => '502',
      'phone_code' => '+502',
    ],
    'Guinea' => [
      'timezone' => 'Africa/Conakry',
      'currency' => 'Guinean Franc',
      'currency_code' => 'GNF',
      'currency_symbol' => 'FG',
      'country_code' => '224',
      'phone_code' => '+224',
    ],
    'Guinea-Bissau' => [
      'timezone' => 'Africa/Bissau',
      'currency' => 'West African CFA Franc',
      'currency_code' => 'XOF',
      'currency_symbol' => 'CFA',
      'country_code' => '245',
      'phone_code' => '+245',
    ],
    'Guyana' => [
      'timezone' => 'America/Guyana',
      'currency' => 'Guyanese Dollar',
      'currency_code' => 'GYD',
      'currency_symbol' => '$',
      'country_code' => '592',
      'phone_code' => '+592',
    ],
    'Haiti' => [
      'timezone' => 'America/Port-au-Prince',
      'currency' => 'Haitian Gourde',
      'currency_code' => 'HTG',
      'currency_symbol' => 'G',
      'country_code' => '509',
      'phone_code' => '+509',
    ],
    'Honduras' => [
      'timezone' => 'America/Tegucigalpa',
      'currency' => 'Honduran Lempira',
      'currency_code' => 'HNL',
      'currency_symbol' => 'L',
      'country_code' => '504',
      'phone_code' => '+504',
    ],
    'Hungary' => [
      'timezone' => 'Europe/Budapest',
      'currency' => 'Hungarian Forint',
      'currency_code' => 'HUF',
      'currency_symbol' => 'Ft',
      'country_code' => '36',
      'phone_code' => '+36',
    ],
    'Iceland' => [
      'timezone' => 'Atlantic/Reykjavik',
      'currency' => 'Icelandic Króna',
      'currency_code' => 'ISK',
      'currency_symbol' => 'kr',
      'country_code' => '354',
      'phone_code' => '+354',
    ],
    'India' => [
      'timezone' => 'Asia/Kolkata',
      'currency' => 'Indian Rupee',
      'currency_code' => 'INR',
      'currency_symbol' => '₹',
      'country_code' => '91',
      'phone_code' => '+91',
    ],
    'Indonesia' => [
      'timezone' => 'Asia/Jakarta',
      'currency' => 'Indonesian Rupiah',
      'currency_code' => 'IDR',
      'currency_symbol' => 'Rp',
      'country_code' => '62',
      'phone_code' => '+62',
    ],
    'Iran' => [
      'timezone' => 'Asia/Tehran',
      'currency' => 'Iranian Rial',
      'currency_code' => 'IRR',
      'currency_symbol' => '﷼',
      'country_code' => '98',
      'phone_code' => '+98',
    ],
    'Iraq' => [
      'timezone' => 'Asia/Baghdad',
      'currency' => 'Iraqi Dinar',
      'currency_code' => 'IQD',
      'currency_symbol' => 'ع.د',
      'country_code' => '964',
      'phone_code' => '+964',
    ],
    'Ireland' => [
      'timezone' => 'Europe/Dublin',
      'currency' => 'Euro',
      'currency_code' => 'EUR',
      'currency_symbol' => '€',
      'country_code' => '353',
      'phone_code' => '+353',
    ],
    'Israel' => [
      'timezone' => 'Asia/Jerusalem',
      'currency' => 'Israeli New Shekel',
      'currency_code' => 'ILS',
      'currency_symbol' => '₪',
      'country_code' => '972',
      'phone_code' => '+972',
    ],
    'Italy' => [
      'timezone' => 'Europe/Rome',
      'currency' => 'Euro',
      'currency_code' => 'EUR',
      'currency_symbol' => '€',
      'country_code' => '39',
      'phone_code' => '+39',
    ],
    'Jamaica' => [
      'timezone' => 'America/Jamaica',
      'currency' => 'Jamaican Dollar',
      'currency_code' => 'JMD',
      'currency_symbol' => '$',
      'country_code' => '1-876',
      'phone_code' => '+1-876',
    ],
    'Japan' => [
      'timezone' => 'Asia/Tokyo',
      'currency' => 'Japanese Yen',
      'currency_code' => 'JPY',
      'currency_symbol' => '¥',
      'country_code' => '81',
      'phone_code' => '+81',
    ],
    'Jordan' => [
      'timezone' => 'Asia/Amman',
      'currency' => 'Jordanian Dinar',
      'currency_code' => 'JOD',
      'currency_symbol' => 'د.ا',
      'country_code' => '962',
      'phone_code' => '+962',
    ],
    'Kazakhstan' => [
      'timezone' => 'Asia/Almaty',
      'currency' => 'Kazakhstani Tenge',
      'currency_code' => 'KZT',
      'currency_symbol' => '₸',
      'country_code' => '7',
      'phone_code' => '+7',
    ],
    'Kenya' => [
      'timezone' => 'Africa/Nairobi',
      'currency' => 'Kenyan Shilling',
      'currency_code' => 'KES',
      'currency_symbol' => 'KSh',
      'country_code' => '254',
      'phone_code' => '+254',
    ],
    'Kiribati' => [
      'timezone' => 'Pacific/Tarawa',
      'currency' => 'Australian Dollar',
      'currency_code' => 'AUD',
      'currency_symbol' => '$',
      'country_code' => '686',
      'phone_code' => '+686',
    ],
    'Kuwait' => [
      'timezone' => 'Asia/Kuwait',
      'currency' => 'Kuwaiti Dinar',
      'currency_code' => 'KWD',
      'currency_symbol' => 'د.ك',
      'country_code' => '965',
      'phone_code' => '+965',
    ],
    'Kyrgyzstan' => [
      'timezone' => 'Asia/Bishkek',
      'currency' => 'Kyrgyzstani Som',
      'currency_code' => 'KGS',
      'currency_symbol' => 'с',
      'country_code' => '996',
      'phone_code' => '+996',
    ],
    'Laos' => [
      'timezone' => 'Asia/Vientiane',
      'currency' => 'Lao Kip',
      'currency_code' => 'LAK',
      'currency_symbol' => '₭',
      'country_code' => '856',
      'phone_code' => '+856',
    ],
    'Latvia' => [
      'timezone' => 'Europe/Riga',
      'currency' => 'Euro',
      'currency_code' => 'EUR',
      'currency_symbol' => '€',
      'country_code' => '371',
      'phone_code' => '+371',
    ],
    'Lebanon' => [
      'timezone' => 'Asia/Beirut',
      'currency' => 'Lebanese Pound',
      'currency_code' => 'LBP',
      'currency_symbol' => 'ل.ل',
      'country_code' => '961',
      'phone_code' => '+961',
    ],
    'Lesotho' => [
      'timezone' => 'Africa/Maseru',
      'currency' => 'Lesotho Loti',
      'currency_code' => 'LSL',
      'currency_symbol' => 'L',
      'country_code' => '266',
      'phone_code' => '+266',
    ],
    'Liberia' => [
      'timezone' => 'Africa/Monrovia',
      'currency' => 'Liberian Dollar',
      'currency_code' => 'LRD',
      'currency_symbol' => '$',
      'country_code' => '231',
      'phone_code' => '+231',
    ],
    'Libya' => [
      'timezone' => 'Africa/Tripoli',
      'currency' => 'Libyan Dinar',
      'currency_code' => 'LYD',
      'currency_symbol' => 'ل.د',
      'country_code' => '218',
      'phone_code' => '+218',
    ],
    'Liechtenstein' => [
      'timezone' => 'Europe/Vaduz',
      'currency' => 'Swiss Franc',
      'currency_code' => 'CHF',
      'currency_symbol' => 'CHF',
      'country_code' => '423',
      'phone_code' => '+423',
    ],
    'Lithuania' => [
      'timezone' => 'Europe/Vilnius',
      'currency' => 'Euro',
      'currency_code' => 'EUR',
      'currency_symbol' => '€',
      'country_code' => '370',
      'phone_code' => '+370',
    ],
    'Luxembourg' => [
      'timezone' => 'Europe/Luxembourg',
      'currency' => 'Euro',
      'currency_code' => 'EUR',
      'currency_symbol' => '€',
      'country_code' => '352',
      'phone_code' => '+352',
    ],
    'Madagascar' => [
      'timezone' => 'Indian/Antananarivo',
      'currency' => 'Malagasy Ariary',
      'currency_code' => 'MGA',
      'currency_symbol' => 'Ar',
      'country_code' => '261',
      'phone_code' => '+261',
    ],
    'Malawi' => [
      'timezone' => 'Africa/Blantyre',
      'currency' => 'Malawian Kwacha',
      'currency_code' => 'MWK',
      'currency_symbol' => 'MK',
      'country_code' => '265',
      'phone_code' => '+265',
    ],
    'Malaysia' => [
      'timezone' => 'Asia/Kuala_Lumpur',
      'currency' => 'Malaysian Ringgit',
      'currency_code' => 'MYR',
      'currency_symbol' => 'RM',
      'country_code' => '60',
      'phone_code' => '+60',
    ],
    'Maldives' => [
      'timezone' => 'Indian/Maldives',
      'currency' => 'Maldivian Rufiyaa',
      'currency_code' => 'MVR',
      'currency_symbol' => 'Rf',
      'country_code' => '960',
      'phone_code' => '+960',
    ],
    'Mali' => [
      'timezone' => 'Africa/Bamako',
      'currency' => 'West African CFA Franc',
      'currency_code' => 'XOF',
      'currency_symbol' => 'CFA',
      'country_code' => '223',
      'phone_code' => '+223',
    ],
    'Malta' => [
      'timezone' => 'Europe/Malta',
      'currency' => 'Euro',
      'currency_code' => 'EUR',
      'currency_symbol' => '€',
      'country_code' => '356',
      'phone_code' => '+356',
    ],
    'Marshall Islands' => [
      'timezone' => 'Pacific/Majuro',
      'currency' => 'United States Dollar',
      'currency_code' => 'USD',
      'currency_symbol' => '$',
      'country_code' => '692',
      'phone_code' => '+692',
    ],
    'Mauritania' => [
      'timezone' => 'Africa/Nouakchott',
      'currency' => 'Mauritanian Ouguiya',
      'currency_code' => 'MRU',
      'currency_symbol' => 'UM',
      'country_code' => '222',
      'phone_code' => '+222',
    ],
    'Mauritius' => [
      'timezone' => 'Indian/Mauritius',
      'currency' => 'Mauritian Rupee',
      'currency_code' => 'MUR',
      'currency_symbol' => '₨',
      'country_code' => '230',
      'phone_code' => '+230',
    ],
    'Mexico' => [
      'timezone' => 'America/Mexico_City',
      'currency' => 'Mexican Peso',
      'currency_code' => 'MXN',
      'currency_symbol' => '$',
      'country_code' => '52',
      'phone_code' => '+52',
    ],
    'Micronesia' => [
      'timezone' => 'Pacific/Chuuk',
      'currency' => 'United States Dollar',
      'currency_code' => 'USD',
      'currency_symbol' => '$',
      'country_code' => '691',
      'phone_code' => '+691',
    ],
    'Moldova' => [
      'timezone' => 'Europe/Chisinau',
      'currency' => 'Moldovan Leu',
      'currency_code' => 'MDL',
      'currency_symbol' => 'L',
      'country_code' => '373',
      'phone_code' => '+373',
    ],
    'Monaco' => [
      'timezone' => 'Europe/Monaco',
      'currency' => 'Euro',
      'currency_code' => 'EUR',
      'currency_symbol' => '€',
      'country_code' => '377',
      'phone_code' => '+377',
    ],
    'Mongolia' => [
      'timezone' => 'Asia/Ulaanbaatar',
      'currency' => 'Mongolian Tugrik',
      'currency_code' => 'MNT',
      'currency_symbol' => '₮',
      'country_code' => '976',
      'phone_code' => '+976',
    ],
    'Montenegro' => [
      'timezone' => 'Europe/Podgorica',
      'currency' => 'Euro',
      'currency_code' => 'EUR',
      'currency_symbol' => '€',
      'country_code' => '382',
      'phone_code' => '+382',
    ],
    'Morocco' => [
      'timezone' => 'Africa/Casablanca',
      'currency' => 'Moroccan Dirham',
      'currency_code' => 'MAD',
      'currency_symbol' => 'د.م.',
      'country_code' => '212',
      'phone_code' => '+212',
    ],
    'Mozambique' => [
      'timezone' => 'Africa/Maputo',
      'currency' => 'Mozambican Metical',
      'currency_code' => 'MZN',
      'currency_symbol' => 'MT',
      'country_code' => '258',
      'phone_code' => '+258',
    ],
    'Myanmar' => [
      'timezone' => 'Asia/Yangon',
      'currency' => 'Burmese Kyat',
      'currency_code' => 'MMK',
      'currency_symbol' => 'Ks',
      'country_code' => '95',
      'phone_code' => '+95',
    ],
    'Namibia' => [
      'timezone' => 'Africa/Windhoek',
      'currency' => 'Namibian Dollar',
      'currency_code' => 'NAD',
      'currency_symbol' => '$',
      'country_code' => '264',
      'phone_code' => '+264',
    ],
    'Nauru' => [
      'timezone' => 'Pacific/Nauru',
      'currency' => 'Australian Dollar',
      'currency_code' => 'AUD',
      'currency_symbol' => '$',
      'country_code' => '674',
      'phone_code' => '+674',
    ],
    'Nepal' => [
      'timezone' => 'Asia/Kathmandu',
      'currency' => 'Nepalese Rupee',
      'currency_code' => 'NPR',
      'currency_symbol' => '₨',
      'country_code' => '977',
      'phone_code' => '+977',
    ],
    'Netherlands' => [
      'timezone' => 'Europe/Amsterdam',
      'currency' => 'Euro',
      'currency_code' => 'EUR',
      'currency_symbol' => '€',
      'country_code' => '31',
      'phone_code' => '+31',
    ],
    'New Zealand' => [
      'timezone' => 'Pacific/Auckland',
      'currency' => 'New Zealand Dollar',
      'currency_code' => 'NZD',
      'currency_symbol' => '$',
      'country_code' => '64',
      'phone_code' => '+64',
    ],
    'Nicaragua' => [
      'timezone' => 'America/Managua',
      'currency' => 'Nicaraguan Córdoba',
      'currency_code' => 'NIO',
      'currency_symbol' => 'C$',
      'country_code' => '505',
      'phone_code' => '+505',
    ],
    'Niger' => [
      'timezone' => 'Africa/Niamey',
      'currency' => 'West African CFA Franc',
      'currency_code' => 'XOF',
      'currency_symbol' => 'CFA',
      'country_code' => '227',
      'phone_code' => '+227',
    ],
    'Nigeria' => [
      'timezone' => 'Africa/Lagos',
      'currency' => 'Nigerian Naira',
      'currency_code' => 'NGN',
      'currency_symbol' => '₦',
      'country_code' => '234',
      'phone_code' => '+234',
    ],
    'North Korea' => [
      'timezone' => 'Asia/Pyongyang',
      'currency' => 'North Korean Won',
      'currency_code' => 'KPW',
      'currency_symbol' => '₩',
      'country_code' => '850',
      'phone_code' => '+850',
    ],
    'North Macedonia' => [
      'timezone' => 'Europe/Skopje',
      'currency' => 'Macedonian Denar',
      'currency_code' => 'MKD',
      'currency_symbol' => 'ден',
      'country_code' => '389',
      'phone_code' => '+389',
    ],
    'Norway' => [
      'timezone' => 'Europe/Oslo',
      'currency' => 'Norwegian Krone',
      'currency_code' => 'NOK',
      'currency_symbol' => 'kr',
      'country_code' => '47',
      'phone_code' => '+47',
    ],
    'Oman' => [
      'timezone' => 'Asia/Muscat',
      'currency' => 'Omani Rial',
      'currency_code' => 'OMR',
      'currency_symbol' => 'ر.ع.',
      'country_code' => '968',
      'phone_code' => '+968',
    ],
    'Pakistan' => [
      'timezone' => 'Asia/Karachi',
      'currency' => 'Pakistani Rupee',
      'currency_code' => 'PKR',
      'currency_symbol' => '₨',
      'country_code' => '92',
      'phone_code' => '+92',
    ],
    'Palau' => [
      'timezone' => 'Pacific/Palau',
      'currency' => 'United States Dollar',
      'currency_code' => 'USD',
      'currency_symbol' => '$',
      'country_code' => '680',
      'phone_code' => '+680',
    ],
    'Panama' => [
      'timezone' => 'America/Panama',
      'currency' => 'Panamanian Balboa',
      'currency_code' => 'PAB',
      'currency_symbol' => 'B/.',
      'country_code' => '507',
      'phone_code' => '+507',
    ],
    'Papua New Guinea' => [
      'timezone' => 'Pacific/Port_Moresby',
      'currency' => 'Papua New Guinean Kina',
      'currency_code' => 'PGK',
      'currency_symbol' => 'K',
      'country_code' => '675',
      'phone_code' => '+675',
    ],
    'Paraguay' => [
      'timezone' => 'America/Asuncion',
      'currency' => 'Paraguayan Guarani',
      'currency_code' => 'PYG',
      'currency_symbol' => '₲',
      'country_code' => '595',
      'phone_code' => '+595',
    ],
    'Peru' => [
      'timezone' => 'America/Lima',
      'currency' => 'Peruvian Sol',
      'currency_code' => 'PEN',
      'currency_symbol' => 'S/.',
      'country_code' => '51',
      'phone_code' => '+51',
    ],
    'Philippines' => [
      'timezone' => 'Asia/Manila',
      'currency' => 'Philippine Peso',
      'currency_code' => 'PHP',
      'currency_symbol' => '₱',
      'country_code' => '63',
      'phone_code' => '+63',
    ],
    'Poland' => [
      'timezone' => 'Europe/Warsaw',
      'currency' => 'Polish Zloty',
      'currency_code' => 'PLN',
      'currency_symbol' => 'zł',
      'country_code' => '48',
      'phone_code' => '+48',
    ],
    'Portugal' => [
      'timezone' => 'Europe/Lisbon',
      'currency' => 'Euro',
      'currency_code' => 'EUR',
      'currency_symbol' => '€',
      'country_code' => '351',
      'phone_code' => '+351',
    ],
    'Qatar' => [
      'timezone' => 'Asia/Qatar',
      'currency' => 'Qatari Riyal',
      'currency_code' => 'QAR',
      'currency_symbol' => 'ر.ق',
      'country_code' => '974',
      'phone_code' => '+974',
    ],
    'Republic of the Congo' => [
      'timezone' => 'Africa/Brazzaville',
      'currency' => 'Central African CFA Franc',
      'currency_code' => 'XAF',
      'currency_symbol' => 'FCFA',
      'country_code' => '242',
      'phone_code' => '+242',
    ],
    'Romania' => [
      'timezone' => 'Europe/Bucharest',
      'currency' => 'Romanian Leu',
      'currency_code' => 'RON',
      'currency_symbol' => 'lei',
      'country_code' => '40',
      'phone_code' => '+40',
    ],
    'Russia' => [
      'timezone' => 'Europe/Moscow',
      'currency' => 'Russian Ruble',
      'currency_code' => 'RUB',
      'currency_symbol' => '₽',
      'country_code' => '7',
      'phone_code' => '+7',
    ],
    'Rwanda' => [
      'timezone' => 'Africa/Kigali',
      'currency' => 'Rwandan Franc',
      'currency_code' => 'RWF',
      'currency_symbol' => 'RF',
      'country_code' => '250',
      'phone_code' => '+250',
    ],
    'Saint Kitts and Nevis' => [
      'timezone' => 'America/St_Kitts',
      'currency' => 'East Caribbean Dollar',
      'currency_code' => 'XCD',
      'currency_symbol' => '$',
      'country_code' => '1-869',
      'phone_code' => '+1-869',
    ],
    'Saint Lucia' => [
      'timezone' => 'America/St_Lucia',
      'currency' => 'East Caribbean Dollar',
      'currency_code' => 'XCD',
      'currency_symbol' => '$',
      'country_code' => '1-758',
      'phone_code' => '+1-758',
    ],
    'Saint Vincent and the Grenadines' => [
      'timezone' => 'America/St_Vincent',
      'currency' => 'East Caribbean Dollar',
      'currency_code' => 'XCD',
      'currency_symbol' => '$',
      'country_code' => '1-784',
      'phone_code' => '+1-784',
    ],
    'Samoa' => [
      'timezone' => 'Pacific/Apia',
      'currency' => 'Samoan Tala',
      'currency_code' => 'WST',
      'currency_symbol' => 'T',
      'country_code' => '685',
      'phone_code' => '+685',
    ],
    'San Marino' => [
      'timezone' => 'Europe/San_Marino',
      'currency' => 'Euro',
      'currency_code' => 'EUR',
      'currency_symbol' => '€',
      'country_code' => '378',
      'phone_code' => '+378',
    ],
    'Sao Tome and Principe' => [
      'timezone' => 'Africa/Sao_Tome',
      'currency' => 'São Tomé and Príncipe Dobra',
      'currency_code' => 'STN',
      'currency_symbol' => 'Db',
      'country_code' => '239',
      'phone_code' => '+239',
    ],
    'Saudi Arabia' => [
      'timezone' => 'Asia/Riyadh',
      'currency' => 'Saudi Riyal',
      'currency_code' => 'SAR',
      'currency_symbol' => 'ر.س',
      'country_code' => '966',
      'phone_code' => '+966',
    ],
    'Senegal' => [
      'timezone' => 'Africa/Dakar',
      'currency' => 'West African CFA Franc',
      'currency_code' => 'XOF',
      'currency_symbol' => 'CFA',
      'country_code' => '221',
      'phone_code' => '+221',
    ],
    'Serbia' => [
      'timezone' => 'Europe/Belgrade',
      'currency' => 'Serbian Dinar',
      'currency_code' => 'RSD',
      'currency_symbol' => 'дин.',
      'country_code' => '381',
      'phone_code' => '+381',
    ],
    'Seychelles' => [
      'timezone' => 'Indian/Mahe',
      'currency' => 'Seychellois Rupee',
      'currency_code' => 'SCR',
      'currency_symbol' => '₨',
      'country_code' => '248',
      'phone_code' => '+248',
    ],
    'Sierra Leone' => [
      'timezone' => 'Africa/Freetown',
      'currency' => 'Sierra Leonean Leone',
      'currency_code' => 'SLL',
      'currency_symbol' => 'Le',
      'country_code' => '232',
      'phone_code' => '+232',
    ],
    'Singapore' => [
      'timezone' => 'Asia/Singapore',
      'currency' => 'Singapore Dollar',
      'currency_code' => 'SGD',
      'currency_symbol' => '$',
      'country_code' => '65',
      'phone_code' => '+65',
    ],
    'Slovakia' => [
      'timezone' => 'Europe/Bratislava',
      'currency' => 'Euro',
      'currency_code' => 'EUR',
      'currency_symbol' => '€',
      'country_code' => '421',
      'phone_code' => '+421',
    ],
    'Slovenia' => [
      'timezone' => 'Europe/Ljubljana',
      'currency' => 'Euro',
      'currency_code' => 'EUR',
      'currency_symbol' => '€',
      'country_code' => '386',
      'phone_code' => '+386',
    ],
    'Solomon Islands' => [
      'timezone' => 'Pacific/Guadalcanal',
      'currency' => 'Solomon Islands Dollar',
      'currency_code' => 'SBD',
      'currency_symbol' => '$',
      'country_code' => '677',
      'phone_code' => '+677',
    ],
    'Somalia' => [
      'timezone' => 'Africa/Mogadishu',
      'currency' => 'Somali Shilling',
      'currency_code' => 'SOS',
      'currency_symbol' => 'Sh',
      'country_code' => '252',
      'phone_code' => '+252',
    ],
    'South Africa' => [
      'timezone' => 'Africa/Johannesburg',
      'currency' => 'South African Rand',
      'currency_code' => 'ZAR',
      'currency_symbol' => 'R',
      'country_code' => '27',
      'phone_code' => '+27',
    ],
    'South Korea' => [
      'timezone' => 'Asia/Seoul',
      'currency' => 'South Korean Won',
      'currency_code' => 'KRW',
      'currency_symbol' => '₩',
      'country_code' => '82',
      'phone_code' => '+82',
    ],
    'South Sudan' => [
      'timezone' => 'Africa/Juba',
      'currency' => 'South Sudanese Pound',
      'currency_code' => 'SSP',
      'currency_symbol' => '£',
      'country_code' => '211',
      'phone_code' => '+211',
    ],
    'Spain' => [
      'timezone' => 'Europe/Madrid',
      'currency' => 'Euro',
      'currency_code' => 'EUR',
      'currency_symbol' => '€',
      'country_code' => '34',
      'phone_code' => '+34',
    ],
    'Sri Lanka' => [
      'timezone' => 'Asia/Colombo',
      'currency' => 'Sri Lankan Rupee',
      'currency_code' => 'LKR',
      'currency_symbol' => '₨',
      'country_code' => '94',
      'phone_code' => '+94',
    ],
    'Sudan' => [
      'timezone' => 'Africa/Khartoum',
      'currency' => 'Sudanese Pound',
      'currency_code' => 'SDG',
      'currency_symbol' => '£',
      'country_code' => '249',
      'phone_code' => '+249',
    ],
    'Suriname' => [
      'timezone' => 'America/Paramaribo',
      'currency' => 'Surinamese Dollar',
      'currency_code' => 'SRD',
      'currency_symbol' => '$',
      'country_code' => '597',
      'phone_code' => '+597',
    ],
    'Sweden' => [
      'timezone' => 'Europe/Stockholm',
      'currency' => 'Swedish Krona',
      'currency_code' => 'SEK',
      'currency_symbol' => 'kr',
      'country_code' => '46',
      'phone_code' => '+46',
    ],
    'Switzerland' => [
      'timezone' => 'Europe/Zurich',
      'currency' => 'Swiss Franc',
      'currency_code' => 'CHF',
      'currency_symbol' => 'CHF',
      'country_code' => '41',
      'phone_code' => '+41',
    ],
    'Syria' => [
      'timezone' => 'Asia/Damascus',
      'currency' => 'Syrian Pound',
      'currency_code' => 'SYP',
      'currency_symbol' => '£S',
      'country_code' => '963',
      'phone_code' => '+963',
    ],
    'Taiwan' => [
      'timezone' => 'Asia/Taipei',
      'currency' => 'New Taiwan Dollar',
      'currency_code' => 'TWD',
      'currency_symbol' => 'NT$',
      'country_code' => '886',
      'phone_code' => '+886',
    ],
    'Tajikistan' => [
      'timezone' => 'Asia/Dushanbe',
      'currency' => 'Tajikistani Somoni',
      'currency_code' => 'TJS',
      'currency_symbol' => 'ЅМ',
      'country_code' => '992',
      'phone_code' => '+992',
    ],
    'Tanzania' => [
      'timezone' => 'Africa/Dar_es_Salaam',
      'currency' => 'Tanzanian Shilling',
      'currency_code' => 'TZS',
      'currency_symbol' => 'TSh',
      'country_code' => '255',
      'phone_code' => '+255',
    ],
    'Thailand' => [
      'timezone' => 'Asia/Bangkok',
      'currency' => 'Thai Baht',
      'currency_code' => 'THB',
      'currency_symbol' => '฿',
      'country_code' => '66',
      'phone_code' => '+66',
    ],
    'Timor-Leste' => [
      'timezone' => 'Asia/Dili',
      'currency' => 'United States Dollar',
      'currency_code' => 'USD',
      'currency_symbol' => '$',
      'country_code' => '670',
      'phone_code' => '+670',
    ],
    'Togo' => [
      'timezone' => 'Africa/Lome',
      'currency' => 'West African CFA Franc',
      'currency_code' => 'XOF',
      'currency_symbol' => 'CFA',
      'country_code' => '228',
      'phone_code' => '+228',
    ],
    'Tonga' => [
      'timezone' => 'Pacific/Tongatapu',
      'currency' => 'Tongan Paʻanga',
      'currency_code' => 'TOP',
      'currency_symbol' => 'T$',
      'country_code' => '676',
      'phone_code' => '+676',
    ],
    'Trinidad and Tobago' => [
      'timezone' => 'America/Port_of_Spain',
      'currency' => 'Trinidad and Tobago Dollar',
      'currency_code' => 'TTD',
      'currency_symbol' => '$',
      'country_code' => '1-868',
      'phone_code' => '+1-868',
    ],
    'Tunisia' => [
      'timezone' => 'Africa/Tunis',
      'currency' => 'Tunisian Dinar',
      'currency_code' => 'TND',
      'currency_symbol' => 'د.ت',
      'country_code' => '216',
      'phone_code' => '+216',
    ],
    'Turkey' => [
      'timezone' => 'Europe/Istanbul',
      'currency' => 'Turkish Lira',
      'currency_code' => 'TRY',
      'currency_symbol' => '₺',
      'country_code' => '90',
      'phone_code' => '+90',
    ],
    'Turkmenistan' => [
      'timezone' => 'Asia/Ashgabat',
      'currency' => 'Turkmenistan Manat',
      'currency_code' => 'TMT',
      'currency_symbol' => 'm',
      'country_code' => '993',
      'phone_code' => '+993',
    ],
    'Tuvalu' => [
      'timezone' => 'Pacific/Funafuti',
      'currency' => 'Australian Dollar',
      'currency_code' => 'AUD',
      'currency_symbol' => '$',
      'country_code' => '688',
      'phone_code' => '+688',
    ],
    'Uganda' => [
      'timezone' => 'Africa/Kampala',
      'currency' => 'Ugandan Shilling',
      'currency_code' => 'UGX',
      'currency_symbol' => 'USh',
      'country_code' => '256',
      'phone_code' => '+256',
    ],
    'Ukraine' => [
      'timezone' => 'Europe/Kiev',
      'currency' => 'Ukrainian Hryvnia',
      'currency_code' => 'UAH',
      'currency_symbol' => '₴',
      'country_code' => '380',
      'phone_code' => '+380',
    ],
    'United Arab Emirates' => [
      'timezone' => 'Asia/Dubai',
      'currency' => 'United Arab Emirates Dirham',
      'currency_code' => 'AED',
      'currency_symbol' => 'د.إ',
      'country_code' => '971',
      'phone_code' => '+971',
    ],
    'United Kingdom' => [
      'timezone' => 'Europe/London',
      'currency' => 'British Pound Sterling',
      'currency_code' => 'GBP',
      'currency_symbol' => '£',
      'country_code' => '44',
      'phone_code' => '+44',
    ],
    'United States' => [
      'timezone' => 'America/New_York',
      'currency' => 'United States Dollar',
      'currency_code' => 'USD',
      'currency_symbol' => '$',
      'country_code' => '1',
      'phone_code' => '+1',
    ],
    'Uruguay' => [
      'timezone' => 'America/Montevideo',
      'currency' => 'Uruguayan Peso',
      'currency_code' => 'UYU',
      'currency_symbol' => '$',
      'country_code' => '598',
      'phone_code' => '+598',
    ],
    'Uzbekistan' => [
      'timezone' => 'Asia/Tashkent',
      'currency' => 'Uzbekistan Som',
      'currency_code' => 'UZS',
      'currency_symbol' => 'soʻm',
      'country_code' => '998',
      'phone_code' => '+998',
    ],
    'Vanuatu' => [
      'timezone' => 'Pacific/Efate',
      'currency' => 'Vanuatu Vatu',
      'currency_code' => 'VUV',
      'currency_symbol' => 'VT',
      'country_code' => '678',
      'phone_code' => '+678',
    ],
    'Vatican City' => [
      'timezone' => 'Europe/Vatican',
      'currency' => 'Euro',
      'currency_code' => 'EUR',
      'currency_symbol' => '€',
      'country_code' => '379',
      'phone_code' => '+379',
    ],
    'Venezuela' => [
      'timezone' => 'America/Caracas',
      'currency' => 'Venezuelan Bolívar',
      'currency_code' => 'VES',
      'currency_symbol' => 'Bs.S.',
      'country_code' => '58',
      'phone_code' => '+58',
    ],
    'Vietnam' => [
      'timezone' => 'Asia/Ho_Chi_Minh',
      'currency' => 'Vietnamese Dong',
      'currency_code' => 'VND',
      'currency_symbol' => '₫',
      'country_code' => '84',
      'phone_code' => '+84',
    ],
    'Yemen' => [
      'timezone' => 'Asia/Aden',
      'currency' => 'Yemeni Rial',
      'currency_code' => 'YER',
      'currency_symbol' => '﷼',
      'country_code' => '967',
      'phone_code' => '+967',
    ],
    'Zambia' => [
      'timezone' => 'Africa/Lusaka',
      'currency' => 'Zambian Kwacha',
      'currency_code' => 'ZMW',
      'currency_symbol' => 'ZK',
      'country_code' => '260',
      'phone_code' => '+260',
    ],
    'Zimbabwe' => [
      'timezone' => 'Africa/Harare',
      'currency' => 'Zimbabwean Dollar',
      'currency_code' => 'ZWL',
      'currency_symbol' => '$',
      'country_code' => '263',
      'phone_code' => '+263',
    ],
  ];

  return $countries;
}


// Get country details by country NAME


/**
 * Get a specific country's details by its name.
 *
 * @param string $countryName The name of the country.
 * @return array|null Country details if found, otherwise null.
 */
function getCountryDetails($countryName)
{
  $countries = getCountries();
  return isset($countries[$countryName]) ? $countries[$countryName] : null;
}

/**
 * Get all country names.
 *
 * @return array List of all country names.
 */
function getAllCountryNames()
{
  $countries = getCountries();
  return array_keys($countries);
}

/**
 * Get a specific country's timezone by its name.
 *
 * @param string $countryName The name of the country.
 * @return string|null Country's timezone if found, otherwise null.
 */
function getCountryTimezone($countryName)
{
  $country = getCountryDetails($countryName);
  return $country['timezone'] ?? null;
}

/**
 * Get a specific country's currency by its name.
 *
 * @param string $countryName The name of the country.
 * @return string|null Country's currency if found, otherwise null.
 */
function getCountryCurrency($countryName)
{
  $country = getCountryDetails($countryName);
  return $country['currency'] ?? null;
}

/**
 * Get a specific country's currency code by its name.
 *
 * @param string $countryName The name of the country.
 * @return string|null Country's currency code if found, otherwise null.
 */
function getCountryCurrencyCode($countryName)
{
  $country = getCountryDetails($countryName);
  return $country['currency_code'] ?? null;
}

/**
 * Get a specific country's currency symbol by its name.
 *
 * @param string $countryName The name of the country.
 * @return string|null Country's currency symbol if found, otherwise null.
 */
function getCountryCurrencySymbol($countryName)
{
  $country = getCountryDetails($countryName);
  return $country['currency_symbol'] ?? null;
}

/**
 * Get a specific country's country code by its name.
 *
 * @param string $countryName The name of the country.
 * @return string|null Country's country code if found, otherwise null.
 */
function getCountryCode($countryName)
{
  $country = getCountryDetails($countryName);
  return $country['country_code'] ?? null;
}

/**
 * Get a specific country's phone code by its name.
 *
 * @param string $countryName The name of the country.
 * @return string|null Country's phone code if found, otherwise null.
 */
function getCountryPhoneCode($countryName)
{
  $country = getCountryDetails($countryName);
  return $country['phone_code'] ?? null;
}

// Example usage:
$countryName = 'Kenya';
$timezone = getCountryTimezone($countryName);
$currency = getCountryCurrency($countryName);
$currencyCode = getCountryCurrencyCode($countryName);
$currencySymbol = getCountryCurrencySymbol($countryName);
$countryCode = getCountryCode($countryName);
$phoneCode = getCountryPhoneCode($countryName);

echo "Country: $countryName\n";
echo "Timezone: $timezone\n";
echo "Currency: $currency ($currencyCode $currencySymbol)\n";
echo "Country Code: $countryCode\n";
echo "Phone Code: $phoneCode\n";


//JET LIST OF COUNTRIES
// Get all country names
$countries = getAllCountryNames();
// print_r($countries);

//HET  all country phone_code and country_code

foreach ($countries as $country) {
  $countryCode = getCountryCode($country);
  $phoneCode = getCountryPhoneCode($country);
  //echo "$country: $phoneCode\n";
}

// Get all country names




