'use strict';

app.directive('navigationDirective', [function(){
	return {
		restrict: 'A',
		templateUrl: 'components/directives/navigationDirective/navigationDirective.html',
		link: function(scope, element, attrs){
            
            scope.navigationElement = [
                {
                	name: "home",
                	link: ""
                },
                {
                	name: "aboout us",
                	link: "aboutUS"
                },
                {
                	name: "our work",
                	link: "ourWork"
                },
                {
                	name: "contact us",
                	link: "contacts"
                }
            ];

            scope.closeNavigationMenu=function(){
                var nav=$('#siteNavigation');
                if(nav.hasClass('in')){
                    nav.removeClass('in');
                }
            };

		}
	}
}]);