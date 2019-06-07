    var $ = jQuery;
    productCarousel($('.megaMenuCarousel_js'), 1, 1, 1, 1, 1);
    mobileOnlyCarousel();
    /* Work with fullscreen_banners.liquid */
    if ($('.banner-carousel-added').length) {
      $('.banner-carousel-added').remove();
      bannerCarousel($('.banner-carousel'));
    }
    // Pick your format here:
    // money_format or money_with_currency_format
    Currency.format = 'money_format';
    var shopCurrency = 'USD';
    /* Sometimes merchants change their shop currency, let's tell our JavaScript file */
    Currency.moneyFormats[shopCurrency].money_with_currency_format =
      "${{amount}} USD";
    Currency.moneyFormats[shopCurrency].money_format = "${{amount}}";
    var cookieCurrency;
    try {
      cookieCurrency = Currency.cookie.read();
    } catch (err) {} // ignore errors reading cookies
    // Fix for customer account pages.
    jQuery('span.money span.money').each(function() {
      jQuery(this).parents('span.money').removeClass('money');
    });
    // Saving the current price.
    jQuery('span.money').each(function() {
      jQuery(this).attr('data-currency-USD', jQuery(this).html());
    });
    // Select all your currencies buttons.
    var buttons = jQuery('.currency li');
    // If there's no cookie or it's the shop currency.
    if (cookieCurrency == null || cookieCurrency === shopCurrency) {
      buttons.removeClass('active');
      jQuery('.currency li[data-currency=' + shopCurrency + ']').addClass(
        'active');
      Currency.currentCurrency = shopCurrency;
      jQuery(".current-currency").text(shopCurrency);
    } else {
      Currency.convertAll(shopCurrency, cookieCurrency);
      buttons.removeClass('active');
      jQuery('.currency li[data-currency=' + cookieCurrency + ']').addClass(
        'active');
      jQuery(".current-currency").text(cookieCurrency);
    }
    // When customer clicks on a currency button.
    buttons.click(function() {
      buttons.removeClass('active');
      var cur = jQuery(this).attr('data-currency');
      jQuery(".currency li[data-currency='" + cur + "']").addClass('active');
      var newCurrency = jQuery(this).attr('data-currency');
      if (newCurrency == Currency.currentCurrency) {
        Currency.convertAll(shopCurrency, newCurrency);
      } else {
        Currency.convertAll(Currency.currentCurrency, newCurrency);
      }
      jQuery(".current-currency").text(cur);
    });
    // For product options.
    var main_selectCallback = window.selectCallback;
    var selectCallback = function(variant, selector) {
      main_selectCallback(variant, selector);
      Currency.convertAll(shopCurrency, jQuery(".currency .active").attr(
        'data-currency'));
    };
