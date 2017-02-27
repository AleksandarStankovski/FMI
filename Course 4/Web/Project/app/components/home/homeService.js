'use strict';

app.factory('homeService', ['$http', function($http) {
	return {
		allServices: function(){
			return $http.get('../data/services.json');
		}
	}
}]);