// blank controller
frontend.controller('ViewBnOpticalController', ViewBnOpticalController);

function ViewBnOpticalController($scope, $http, $sce) {

    $scope.trustAsHtml = $sce.trustAsHtml;

    var optical_id = document.getElementsByName('optical_id')[0].value;


        $http
        .get(window.location.origin+"/service/api/view/optical/" + optical_id, {
            transformRequest: angular.identity,
            headers: {'Content-Type': undefined, 'Process-Data': false}
        })
        
        .then(function(response){
            
            data = response.data.opticalservice;
            var header = {
                text: "ধরণ নির্বাচন করুন",
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

        $http
        .get(window.location.origin+"/medical-department/api/view/optical/" + optical_id, {
            transformRequest: angular.identity,
            headers: {'Content-Type': undefined, 'Process-Data': false}
        })
        .then(function(response){
            data = response.data.opticaldepartment;
            var header = {
                text: "বিভাগ নির্বাচন করুন",
                value: "0"
            };
            data.unshift(header);
            $('#department_id').kendoDropDownList({
                dataTextField: "text",
                dataValueField: "value",
                dataSource: data,
                dataType: "jsonp",
                index: 0
            });

            var dropdownlist = $("#department_id").data("kendoDropDownList");

        });

        $scope.getMedicalSpecialistDropDown = function() 
        {
            
            $('#medical_specialist_id').kendoDropDownList({
                optionLabel   : "ডাক্তার নির্বাচন করুন",
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
            .get(window.location.origin+"/medical-specialist/api/view/optical/" + value + "/" + optical_id, {
                transformRequest: angular.identity,
                headers: {'Content-Type': undefined, 'Process-Data': false}
            })
            .then(function(response){
                data = response.data.opticalmedicalspecialist;
                var header = {
                    text: "ডাক্তার নির্বাচন করুন",
                    value: "0"
                };
                data.unshift(header);
                $('#medical_specialist_id').kendoDropDownList({
                    dataTextField: "text",
                    dataValueField: "value",
                    dataSource: data,
                    dataType: "jsonp",
                    index: 0
                });

            });
            
    
        };

        $scope.getDoctor = function() 
        {
            var value = $("#medical_specialist_id").data("kendoDropDownList").value();

            $http
            .get(window.location.origin+"/optical/optical-doctor/api/list/" + value + "/" + optical_id, {
                transformRequest: angular.identity,
                headers: {'Content-Type': undefined, 'Process-Data': false}
            })

            .then(function(response) {
                $scope.doctors = response.data;
            });
    
        };

        $scope.getOpticalService = function() 
        {
            var value = $("#service_id").data("kendoDropDownList").value();
            
            $http
            .get(window.location.origin+"/optical/optical-service/api/list/" + optical_id + "/" + value, {
                transformRequest: angular.identity,
                headers: {'Content-Type': undefined, 'Process-Data': false}
            })

            .then(function(response) {
                $scope.services = response.data;
            });
    
        };

        
}