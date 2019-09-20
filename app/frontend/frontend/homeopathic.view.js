// blank controller
frontend.controller('ViewHomeopathicController', ViewHomeopathicController);

function ViewHomeopathicController($scope, $http, $sce) {

    $scope.trustAsHtml = $sce.trustAsHtml;

    var homeopathic_id = document.getElementsByName('homeopathic_id')[0].value;


        $http
        .get(window.location.origin+"/service/api/view/homeopathic/" + homeopathic_id, {
            transformRequest: angular.identity,
            headers: {'Content-Type': undefined, 'Process-Data': false}
        })
        
        .then(function(response){
            
            data = response.data.homeopathicservice;
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
        .get(window.location.origin+"/medical-department/api/view/homeopathic/" + homeopathic_id, {
            transformRequest: angular.identity,
            headers: {'Content-Type': undefined, 'Process-Data': false}
        })
        .then(function(response){
            data = response.data.homeopathicdepartment;
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
            .get(window.location.origin+"/medical-specialist/api/view/homeopathic/" + value + "/" + homeopathic_id, {
                transformRequest: angular.identity,
                headers: {'Content-Type': undefined, 'Process-Data': false}
            })
            .then(function(response){
                data = response.data.homeopathicmedicalspecialist;
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
            .get(window.location.origin+"/homeopathic/homeopathic-doctor/api/list/" + value + "/" + homeopathic_id, {
                transformRequest: angular.identity,
                headers: {'Content-Type': undefined, 'Process-Data': false}
            })

            .then(function(response) {
                $scope.doctors = response.data;
            });
    
        };

        $scope.getHomeopathicService = function() 
        {
            var value = $("#service_id").data("kendoDropDownList").value();
            
            $http
            .get(window.location.origin+"/homeopathic/homeopathic-service/api/list/" + homeopathic_id + "/" + value, {
                transformRequest: angular.identity,
                headers: {'Content-Type': undefined, 'Process-Data': false}
            })

            .then(function(response) {
                $scope.services = response.data;
            });
    
        };

        
}