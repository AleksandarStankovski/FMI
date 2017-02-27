'use strict';

app.controller('homeController', ['$scope', '$rootScope', 'homeService', function ($scope, $rootScope, homeService) {
	
	function initServices(){
		homeService.allServices().then(
			function(response){
                $scope.services = response.data;
			},function(error){
				console.log(error);
			});
	};

	initServices();
	
}]);
