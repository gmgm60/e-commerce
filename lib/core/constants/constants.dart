
RegExp emailRegExp = RegExp(
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

//remote
const String baseUrl = 'https://mega-e-commerce.herokuapp.com/api/';
const String loginEndPoint = 'login';
const String registerEndPoint = 'register';
const String logoutEndPoint = 'logout';
const String resetPassEndPoint = 'forgot_password';
const String authorizationHeader = 'Authorization';
const String bearerToken = 'Bearer';
const String ordersEndPoint = 'orders';
const String merchantsEndPoint = 'merchants';

// local code
const String enLanguageCode = 'en';
const String arLanguageCode = 'ar';

// keys
const String tokenKey = 'token_key';
const String localeCodeKey = 'locale_code_key';
