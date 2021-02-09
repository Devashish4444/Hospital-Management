var app = angular.module("myApp", []);

app.controller("LoginController", [ '$scope', '$http','$window', function($scope, $http,$window) {
    
    $http.defaults.headers.post["Content-Type"] = "application/x-www-form-urlencoded; charset=utf-8";
	$scope.sendData = function() {
       // $window.alert("Calling Username"+$scope.username+ " Password" +$scope.password);
        $http({
            url : 'loginServlet',
            method : "GET",
            params : {
              "username":$scope.username,
              "password":$scope.password  }
        }).then(function(response){
              //$window.alert("Result Success"+response.data.firstName);
              //$window.alert("Result Success"+response.data.message);
              //scope.firstName=response.data.firstName;
              
           if (response.data.message=="Admin_Role")
            {   
                $window.location.href='admin.html'
            }
           else if (response.data.message=="Doctor_Role")
            {
                $window.location.href='doctor.html'    
            }
             else if (response.data.message=="Patient_Role")
            {
                $window.location.href='patient.html'
            }
           else{
               $scope.errorMessage="Invalid Credentials"
           } 

        },(function (response){
             //fail case
           //$window.alert("Result Failure"+response);
            $scope.message = response.data.message;
        }));
 
    }
	

  
	
}
]);