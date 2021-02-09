var app = angular.module("myApp", []);

app.controller("DoctorController", [ '$scope', '$http','$window', function($scope, $http,$window) {
    
    $http.defaults.headers.post["Content-Type"] = "application/x-www-form-urlencoded; charset=utf-8";
	$scope.updateAvailability = function()
	 {
       // $window.alert("Calling Doctor Change_Date"+$scope.Change_Date+ "Time_From" +$scope.Time_From +"Time_To"+$scope.Time_To);
         $http({
			    url: "DoctorDetailsServlet",
				method:"GET",
				params : {"Change_Date": $scope.Change_Date,"Time_From": $scope.Time_From,"Time_To": $scope.Time_To}
	  }).then(function(response){
            // $window.alert("Result Success"+response.data);
            //$window.alert(response.data);
		if (response.data=="Success")
		{
			$scope.message="Your Timings have been Updated Successfully";
			//$window.location.href='index.html'
		}  
         // $window.alert(response.status);
          console.log(response.data);
        },(function (response){
             //fail case
           //$window.alert("Result Failure"+response);
            $scope.message = response;
        }));
 
    }

	$scope.getPatienDataforDoctor = function() {
			$http({
			url : 'PatientListForDoctorServlet',
			method : "GET",			
		}).then(function(response) {
			if(response.data.myArrayList.length == 0) {
				$scope.noEmpRecord = "Yes";
			} else {
				$scope.patientList = response.data.myArrayList;
			}
		}, function(response) {
			console.log("Failure -> " + response.data);
			$scope.empList = response.data.myArrayList;
		});
	}
}

]);