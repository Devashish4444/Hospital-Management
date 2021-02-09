var app = angular.module("myApp", []);

app.controller("AdminController", [ '$scope', '$http','$window', function($scope, $http,$window) {
	
	$http.defaults.headers.post["Content-Type"] = "application/x-www-form-urlencoded; charset=utf-8";
	$scope.getPatienData = function() {
		$http({
			url : 'PatientDetailsServlet',
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
	};
	
$scope.getDoctorData = function() {
		$http({
			url : 'GetDoctorDetailsServlet',
			method : "GET",			
		}).then(function(response) {
			//$window.alert(response.data.myArrayList);
			if(response.data.myArrayList.length == 0) {
				$scope.noEmpRecord = "Yes";
			} else {
				$scope.doctorList = response.data.myArrayList;
			}
		}, function(response) {
			console.log("Failure -> " + response.data);
			$scope.empList = response.data.myArrayList;
		});
	};
	
	$scope.getSlotList = function() {
		//$window.alert("Calling to get slot times doctor"+$scope.strDoctor+"Appointment_Date"+$scope.Appointment_Date);
					$http({
						url : 'SlotsServlet',
						method : "GET",
						params : {"Appointment_Date":$scope.Appointment_Date}
					}).then(function(response) {
						//$window.alert(response.data.myArrayList);
						if(response.data.myArrayList.length == 0) {
							$scope.noEmpRecord = "Yes";
						} else {
							$scope.slotList = response.data.myArrayList;
						}
				
					}, function(response) {
						console.log("Failure -> " + response.data);
						$scope.empList = response.data.myArrayList;
					});	
		}		

$scope.updateSlot = function() {
		
	//$window.alert("Calling slot times doctor"+$scope.selectDoctor+"Appointment_Date"+$scope.Appointment_Date+"slot"+$scope.slot);
		$http({
			url : 'DoctorManageTimings',
			method : "GET",
			params : {"Appointment_Date":$scope.Appointment_Date,"Slot_Time":$scope.Slot_Time}
		}).then(function(response) {
     		//$window.alert(response.data);
     		console.log(response);
			if (response.data=="Success")
			{
				//$window.location.href='login.html';
	            $scope.message="Slot Timings Have Been Updated Successfully";
			} else
				{
				$scope.message="Please check the details you have entered and Try Again !!";
				}
		}, function(response) {
			// $window.alert("Result Failure"+response);
	            $scope.message = response;
		});
	};
	
}
]);