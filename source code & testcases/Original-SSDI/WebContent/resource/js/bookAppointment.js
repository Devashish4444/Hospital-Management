var app = angular.module("myApp", []);

app.controller("BookingController", [ '$scope', '$http','$window', function($scope, $http,$window) {
	$http.defaults.headers.post["Content-Type"] = "application/x-www-form-urlencoded; charset=utf-8";
	$scope.submitAppointment = function()
	 {
        //$window.alert("Calling speciality"+$scope.strSpeciality+"dcsource:"+$scope.strDoctor+"Appointment_Date" +$scope.Appointment_Date +"Appointment_Time"+$scope.Appointment_Time);
         $http({
			    url: "BookAppointmentServlet",
				method:"GET",
				params : {"doctorssource": $scope.strSpeciality,"dcsource": $scope.strDoctor,"Appointment_Date": $scope.Appointment_Date,"Appointment_Time": $scope.Appointment_Time,
				"Problem_Description": $scope.Problem_Description,"Comments": $scope.Comments}
	  }).then(function(response){
            // $window.alert("Result Success"+response.data);
            //$window.alert(response.data);
		if (response.data=="Success")
		{
			$scope.message="Your Appointment has been booked Successfully";
			//$window.location.href='index.html'
		}  
         // $window.alert(response.status);
          console.log(response.data);
        },(function (response){
             //fail case
          // $window.alert("Result Failure"+response);
            $scope.message = response;
        }));
	 }
	
   $scope.getSlotList = function() {
		//$window.alert("Calling to get slot times doctor"+$scope.strDoctor+"Appointment_Date"+$scope.Appointment_Date);
					$http({
						url : 'SlotsServlet',
						method : "GET",
						params : {"dcsource": $scope.strDoctor,"Appointment_Date":$scope.Appointment_Date}
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

	   $scope.onloadFun = function() {
	        //alert(1);
	        $scope.specialities = {
	        		'Dental': {
	                    'Andrew Roy': [],
	                    'Dale Martis': []                    
	                },
	                'General Physician': {
	                    'Bella Weasley': [],
	                    'Jack Gran': []
	                    
	                },
	    			 'Cardiologist': {
	                    'Harry Shaw': [],
	                    'Jeff Davis': []
	                    
	                },
	    			 'Neuro Surgeon': {
	                    'Garry Smith': [],
	                    'Alyssa Johnson': []
	                    
	                },
	    			 'General Surgeon': {
	                    'Trey Miller': [],
	                    'Sweety Wilson': []
	                    
	                },		
	        };
	            $scope.GetSelectedSpeciality = function () {
	            $scope.strSpeciality = document.getElementById('speciality').value;
	       };
	          $scope.GetSelectedDoctor = function () {
	            $scope.strDoctor = document.getElementById('doctor').value;
	           };
	      } 
	   
	   $scope.getMyAppointment = function() {
			//$window.alert("Calling to get slot times doctor"+$scope.strDoctor+"Appointment_Date"+$scope.Appointment_Date);
						$http({
							url : 'PatientMyAppointmentServlet',
							method : "GET",
						}).then(function(response) {
							//$window.alert(response.data.myArrayList);
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
	   
}]);

