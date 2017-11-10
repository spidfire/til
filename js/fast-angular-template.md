# Fast Angular template


```
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" ng-app="phonecatApp">
    <head>
        <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
        <title>Fast Angular template</title>
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.6/angular.min.js"></script>
    </head>
    <body ng-controller="PhoneListController">
        <div ng-repeat='p in phones'>
            {{ p.name }}
        </div>
        <script>
        // Define the `phonecatApp` module
        var phonecatApp = angular.module('phonecatApp', []);
        // Define the `PhoneListController` controller on the `phonecatApp` module
        phonecatApp.controller('PhoneListController', function PhoneListController($scope) {
        $scope.phones = [
            {
                "name": "Nexus S",
                "snippet": "Fast just got faster with Nexus S."
            },
            {
                "name": "Motorola XOOM™ with Wi-Fi",
                "snippet": "The Next, Next Generation tablet."
            },
            {
                "name": "MOTOROLA XOOM™",
                "snippet": "The Next, Next Generation tablet."
            }
        ];
        });
        </script>
    </body>
</html>
```

