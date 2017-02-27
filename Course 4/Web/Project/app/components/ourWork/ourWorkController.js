'use strict';

app.controller('ourWorkController', ['$scope', '$rootScope', 'ourWorkService', function($scope, $rootScope, ourWorkService){
	
	console.log('ourWorkController');

	function initProjects(){
		ourWorkService.allProjects().then(
			function(response){
                $scope.projects=response.data;
			},function(error){
				console.log("error");
			});
	};

    initProjects();

}]);