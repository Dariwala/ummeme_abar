// blank controller
frontend.controller('ViewBnForeignmedicalController', ViewBnForeignmedicalController);

function ViewBnForeignmedicalController($scope, $http, $sce) {

    $scope.trustAsHtml = $sce.trustAsHtml;

    var foreignmedical_id = document.getElementsByName('foreignmedical_id')[0].value;


        $http
        .get(window.location.origin+"/service/api/view/foreignmedical/" + foreignmedical_id, {
            transformRequest: angular.identity,
            headers: {'Content-Type': undefined, 'Process-Data': false}
        })
        
        .then(function(response){            
            data = response.data.foreignmedicalservice;
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
        .get(window.location.origin+"/medical-department/api/view/foreignmedical/" + foreignmedical_id, {
            transformRequest: angular.identity,
            headers: {'Content-Type': undefined, 'Process-Data': false}
        })
        .then(function(response){
            data = response.data.foreignmedicaldepartment;
            $('#department_id').kendoDropDownList({
                optionLabel   : "বিভাগ নির্বাচন করুন",
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
            });
        };

        $scope.getMedicalSpecialist = function() 
        {
            var value = $("#department_id").data("kendoDropDownList").value();

            $http
            .get(window.location.origin+"/medical-specialist/api/view/foreignmedical/" + value + "/" + foreignmedical_id, {
                transformRequest: angular.identity,
                headers: {'Content-Type': undefined, 'Process-Data': false}
            })
            .then(function(response){
                data = response.data.foreignmedicalmedicalspecialist;
                $('#medical_specialist_id').kendoDropDownList({
                    optionLabel   : "ডাক্তার নির্বাচন করুন",
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
            .get(window.location.origin+"/foreignmedical/foreignmedical-doctor/api/list/" + value + "/" + foreignmedical_id, {
                transformRequest: angular.identity,
                headers: {'Content-Type': undefined, 'Process-Data': false}
            })

            .then(function(response) {
                $scope.doctors = response.data;
            });
    
        };

        $scope.getForeignmedicalService = function() 
        {
            var value = $("#service_id").data("kendoDropDownList").value();
            
            $http
            .get(window.location.origin+"/foreignmedical/foreignmedical-service/api/list/" + foreignmedical_id + "/" + value, {
                transformRequest: angular.identity,
                headers: {'Content-Type': undefined, 'Process-Data': false}
            })

            .then(function(response) {
                $scope.services = response.data;
            });
    
        };

        
}