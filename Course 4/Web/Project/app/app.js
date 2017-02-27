'use strict';

var app = angular.module('SoftGroup', ['ngRoute', 'ngMap']);

app.config(['$routeProvider', function($routeProvider) {
  
    $routeProvider.when('/', {
        templateUrl: 'components/home/home.html',
        controller: 'homeController'
    });

    $routeProvider.when('/aboutUS', {
        templateUrl: 'components/aboutUS/aboutUS.html',
        controller: 'aboutUSController'
    });

    $routeProvider.when('/contacts', {
    	templateUrl: 'components/contacts/contacts.html',
    	controller: 'contactsController'
    });

    $routeProvider.when('/ourWork', {
    	templateUrl: 'components/ourWork/ourWork.html',
    	controller: 'ourWorkController'
    });

    $routeProvider.otherwise(
        { redirectTo: '/' }
    );

}]);