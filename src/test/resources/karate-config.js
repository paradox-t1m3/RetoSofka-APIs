function fn() {
    var environment = karate.env;

    karate.log('🌍 Environment (console + HTML report): ', environment);

    var config = {
        urlApi: 'https://api.demoblaze.com/'
    };

    if (!environment) {
        environment = 'dev';
    }

    if (environment == 'qa') {
        config.urlApi = 'https://api.demoblaze.com/';
    } else if (environment == 'production') {
        config.urlApi = 'https://api.demoblaze.com/';
    }

    karate.configure('connectTimeout', 5000);
    karate.configure('readTimeout', 5000);
    karate.configure('ssl', true);

    return config;
}
