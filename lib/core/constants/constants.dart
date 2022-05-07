
RegExp emailRegExp = RegExp(
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

//remote
const String baseUrl = 'https://e4ee-197-55-22-254.eu.ngrok.io/api/';

const String loginEndPoint = 'login';
const String registerEndPoint = 'register';
const String logoutEndPoint = 'logout';
const String resetPassEndPoint = 'forgot_password';
const String authorizationHeader = 'Authorization';

const String ordersEndPoint = 'order/index';

const String categoriesEndPoint = 'category/index';
const String categoryByIDEndPoint = 'category/view';

const String merchantsEndPoint = 'seller/index';
const String merchantProductsEndPoint = 'seller_prod';

const String productsEndPoint = 'product/index';
const String productEndPoint = 'product';

const String viewCartEndPoint = "cart/view";
const String addToCartEndPoint = "addToCart";
const String deleteFromCartEndPoint = "cart/delete";
const String confirmOrderEndPoint = "order/store";

// local code
const String enLanguageCode = 'en';
const String arLanguageCode = 'ar';

// keys
const String tokenKey = 'token_key';
const String localeCodeKey = 'locale_code_key';
const String currentUserKey = 'current_user_key';

//error message
const String unknownError ="Unknown Error";
const String somethingWentWrong ="Something Went Wrong!";
const String unauthorized ="unauthorized!";
const String serverError ="server Error!";
const String notFound ="Not Found!";
const String noInternet ="No Internet Connection!";