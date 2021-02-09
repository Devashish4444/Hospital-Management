var app = angular.module("myApp", []);
app.controller("SignupController", [ '$scope', '$http','$window', function($scope, $http,$window) {
	$http.defaults.headers.post["Content-Type"] = "application/x-www-form-urlencoded; charset=utf-8";

	$scope.ValidateData = function()
	    {
     $window.alert("Calling firstName"+$scope.firstName+ "lastName" +$scope.lastName +"email"+$scope.email);
         $http({
			    url: "RegisterServlet",
                method:"GET",
                
				params : {"firstName": $scope.firstName,"lastName": $scope.lastName,"password": $scope.password,
				"email": $scope.email,"contact": $scope.contact,"gender":$scope.gender,"address1":$scope.address1,
			    "address2":$scope.address2,"city":$scope.city,"state":$scope.state,"zipcode":$scope.zipcode}
                
	  }).then(function(response){
             //$window.alert("Result Success"+response.data);
            //$window.alert(response.data);
		if (response.data="Success")
		{
			 $window.location.href='login.html';
            $scope.message="Registration Successful.. Please Login";
		}  
            //$window.alert(response.status);
            //console.log(response.data);
        },(function (response){
             //fail case
           //$window.alert("Result Failure"+response);
            $scope.message = response.data;
        }));
 
    }
}
]);