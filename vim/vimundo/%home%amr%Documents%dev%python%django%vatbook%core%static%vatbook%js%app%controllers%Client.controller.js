Vim�UnDo� �qA�� ��i�(GOf8�rL|���XB���I   /   �    .controller('ClientController', ['clientApi', '$location', '$routeParams', '$scope', function (clientApi, $location, $routeParams, $scope) {      &                       U]D    _�                             ����                                                                                                                                                                                                                                                                                                                                                             U[m     �   3   5                  $scope.loadConcepts();�   (   *          &                $scope.loadConcepts();�                )        $scope.loadConcepts = function(){�                �    .controller('ConceptController', ['ConceptApi', '$location', '$routeParams', '$scope', function (conceptApi, $location, $routeParams, $scope) {5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             U[{    �   2   4          "        $scope.$watch('concepts');�   1   3          5        // We watch for concepts to refresh list view�   .   0          0            $location.path("/concept/edit/"+id);�   -   /          &            // Request concept on load�   '   )          2            conceptApi.remove(id).then(function(){�   "   $          0                $location.path("/concept/list");�                 :                promise = conceptApi.save($scope.concept);�                <                promise = conceptApi.update($scope.concept);�                "            if($scope.concept.id){�                        $scope.concept = {�                +                    $scope.concepts = data;�                6                conceptApi.list().then(function(data){�   	             *                    $scope.concept = data;�      
          D                conceptApi.get($routeParams.id).then(function(data){�                �    .controller('ClientController', ['ConceptApi', '$location', '$routeParams', '$scope', function (conceptApi, $location, $routeParams, $scope) {5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 v���    U[�     �         6                  name:"",               description:"",               vat_type:"",               tax_type:""   
        };5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 v���    U[�     �         2              $scope.client = {5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  v        U[�    �         3              $scope.client = {       
        };       !        $scope.save = function(){5�_�                        &    ����                                                                                                                                                                                                                                                                                                                                                  v        U]C    �         /      �    .controller('ClientController', ['clientApi', '$location', '$routeParams', '$scope', function (clientApi, $location, $routeParams, $scope) {5��