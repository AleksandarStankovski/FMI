'use strict';

app.controller('contactsController', ['$scope', '$rootScope', 'contactsService', function($scope, $rootScope, contactsService){

	function initOffices(){
		contactsService.allOffices().then(
			function(response){
                $scope.offices = response.data;
			}, function(error){
                console.log(error);
			});
	};

	initOffices();

}]);