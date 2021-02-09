var app = angular.module("myApp", []);
app.controller("LogoutController", [ '$scope', '$http','$window', function($scope, $http,$window) {
    $http.defaults.headers.post["Content-Type"] = "application/x-www-form-urlencoded; charset=utf-8";
	$scope.Logout = function() {
        $window.alert("Calling logout");
        $http({
            url : 'LogoutServlet',
            method : "GET",
         }).then(function(response){
        	 {
        		 if (response.data.message=="You have logged out successfully")
                 {
                     $window.location.href='index.html'
                 }
        	 }

        },(function (response){
             //fail case
           //$window.alert("Result Failure"+response);
            $scope.message = response;
        }));
 
    }
	

  
	
}
]);