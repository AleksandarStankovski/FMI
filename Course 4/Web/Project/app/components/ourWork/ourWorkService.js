'use strict';

app.factory('ourWorkService', ['$http', function($http) {
	return {
		allProjects: function(){
			return $http.get('../data/projects.json');
		}
	}
}]);