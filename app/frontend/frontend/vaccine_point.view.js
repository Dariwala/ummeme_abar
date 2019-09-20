// blank controller
frontend.controller('ViewVaccinePointController', ViewVaccinePointController);

function ViewVaccinePointController($scope, $http, $sce) {

    $scope.trustAsHtml = $sce.trustAsHtml;

    var vaccine_point_id = document.getElementsByName('vaccine_point_id')[0].value;

     $http
        .get(window.location.origin+"/service/api/view/vaccine-point/" + vaccine_point_id, {
            transformRequest: angular.identity,
            headers: {'Content-Type': undefined, 'Process-Data': false}
        })
        .then(function(response){
            data = response.data.vaccinepointservice;
            var header = {
                text: "Select Category",
                value: "0"
            };
            data.unshift(header);
            $('#service_id').kendoDropDownList({
                dataTextField: "text",
                dataValueField: "value",
                dataSource: data,
                dataType: "jsonp",
                filter: "contains",
                index: 0
            });

            var dropdownlist = $("#service_id").data("kendoDropDownList");

        });

        

        $scope.getSubServiceDropDown = function() 
        {
            
            $('#subservice_id').kendoDropDownList({
             optionLabel   : "Select Subservice",
            });
        };



        $scope.getSubservice = function() 
        {
            var value = $("#service_id").data("kendoDropDownList").value();

            $http
            .get(window.location.origin+"/service/sub-service/api/view/vaccine-point/" + value + "/" + vaccine_point_id, {
                transformRequest: angular.identity,
                headers: {'Content-Type': undefined, 'Process-Data': false}
            })
            .then(function(response){
                data = response.data.vaccinepointsubservice;
                $('#service_id').kendoDropDownList({
                    optionLabel   : "Select Subservice",
                    dataTextField: "text",
                    dataValueField: "value",
                    dataSource: data,
                    dataType: "jsonp",
                    filter: "contains",
                    index: 0
                });

            });
            
    
        };

        $scope.getVaccinePointService = function() 
        {
            var value = $("#service_id").data("kendoDropDownList").value();

            $http
            .get(window.location.origin+"/vaccine-point/vaccine-point-service/api/list/" +  vaccine_point_id + "/" + value, {
                transformRequest: angular.identity,
                headers: {'Content-Type': undefined, 'Process-Data': false}
            })

            .then(function(response) {
                $scope.services = response.data;
            });
    
        };


        $http
        .get(window.location.origin+"/medical-department/api/view/vaccine-point/" + vaccine_point_id, {
            transformRequest: angular.identity,
            headers: {'Content-Type': undefined, 'Process-Data': false}
        })
        .then(function(response){
            data = response.data.vaccinepointdepartment;
            var header = {
                text: "Select Department",
                value: "0"
            };
            data.unshift(header);
            $('#department_id').kendoDropDownList({
                dataTextField: "text",
                dataValueField: "value",
                dataSource: data,
                dataType: "jsonp",
                filter: "contains",
                index: 0
            });

            var dropdownlist = $("#department_id").data("kendoDropDownList");

        });

        $scope.getMedicalSpecialistDropDown = function() 
        {
            $('#medical_specialist_id').kendoDropDownList({
                optionLabel   : "Select Doctor",
                dataTextField: "text",
                dataValueField: "value",
                dataSource: [],
                dataType: "jsonp",
                index: 0
            });
        };

        $scope.getMedicalSpecialist = function() 
        {  
            var value = $("#department_id").data("kendoDropDownList").value();
           
            $http
            .get(window.location.origin+"/medical-specialist/api/view/vaccine-point/" + value + "/" + vaccine_point_id, {
                transformRequest: angular.identity,
                headers: {'Content-Type': undefined, 'Process-Data': false}
            })
            .then(function(response){
                data = response.data.vaccinepointmedicalspecialist;
                var header = {
                    text: "Select Doctor",
                    value: "0"
                };
                data.unshift(header);
                $('#medical_specialist_id').kendoDropDownList({
                    dataTextField: "text",
                    dataValueField: "value",
                    dataSource: data,
                    dataType: "jsonp",
                    filter: "contains",
                    index: 0
                });

            });
    
        };

        $scope.getDoctor = function() 
        {
            var value = $("#medical_specialist_id").data("kendoDropDownList").value();

            $http
            .get(window.location.origin+"/vaccine-point/vaccine-point-doctor/api/list/" + value + "/" + vaccine_point_id, {
                transformRequest: angular.identity,
                headers: {'Content-Type': undefined, 'Process-Data': false}
            })

            .then(function(response) {
                $scope.doctors = response.data;
            });
    
        };

        
}