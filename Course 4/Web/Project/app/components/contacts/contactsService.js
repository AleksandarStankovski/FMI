'use strict';

app.factory('contactsService', ['$http', function($http){
	return {
		allOffices: function(){
			return $http.get('../data/offices.json');
		}
	}
}]);