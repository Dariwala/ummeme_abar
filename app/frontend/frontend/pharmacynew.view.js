// blank controller
frontend.controller('ViewPharmacynewController', ViewPharmacynewController);

function ViewPharmacynewController($scope, $http, $sce) {

    $scope.trustAsHtml = $sce.trustAsHtml;

    var pharmacynew_id = document.getElementsByName('pharmacynew_id')[0].value;
        
        $http
        .get(window.location.origin+"/service/api/view/pharmacynew/" + pharmacynew_id, {
            transformRequest: angular.identity,
            headers: {'Content-Type': undefined, 'Process-Data': false}
        })
        
        .then(function(response){
            
            data = response.data.pharmacynewservice;
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

        $http
        .get(window.location.origin+"/medical-department/api/view/pharmacynew/" + pharmacynew_id, {
            transformRequest: angular.identity,
            headers: {'Content-Type': undefined, 'Process-Data': false}
        })
        .then(function(response){
            data = response.data.pharmacynewdepartment;
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
            .get(window.location.origin+"/medical-specialist/api/view/pharmacynew/" + value + "/" + pharmacynew_id, {
                transformRequest: angular.identity,
                headers: {'Content-Type': undefined, 'Process-Data': false}
            })
            .then(function(response){
                data = response.data.pharmacynewmedicalspecialist;
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
                    index: 0
                });

            });
            
    
        };

        $scope.getDoctor = function() 
        {
            var value = $("#medical_specialist_id").data("kendoDropDownList").value();

            $http
            .get(window.location.origin+"/pharmacynew/pharmacynew-doctor/api/list/" + value + "/" + pharmacynew_id, {
                transformRequest: angular.identity,
                headers: {'Content-Type': undefined, 'Process-Data': false}
            })

            .then(function(response) {
                $scope.doctors = response.data;
            });
    
        };
        
        $scope.getPharmacynewService = function() 
        {
            var value = $("#service_id").data("kendoDropDownList").value();
         console.log("azam" + value);
            $http
            .get(window.location.origin+"/pharmacynew/pharmacynew-service/api/list/" + pharmacynew_id + "/" + value, {
                transformRequest: angular.identity,
                headers: {'Content-Type': undefined, 'Process-Data': false}
            })

            .then(function(response) {
                $scope.services = response.data;
            });
    
        };

        
}