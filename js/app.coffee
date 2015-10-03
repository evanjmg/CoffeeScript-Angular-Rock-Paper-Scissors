# rock paper scissors
@Rps = angular.module("Rps", [])

@Rps.controller 'MainCtrl', ['$scope', 'GameService', ($scope, GameService) ->
		$scope.selectorValue;
		$scope.result;
		$scope.decide = ->
			$scope.playerDecision = $scope.selectorValue
			$scope.computerDecision = GameService.getComputerMove()
			$scope.result = GameService.decide($scope.selectorValue)
			$scope.playerDecisionImage = drawImages($scope.computerDecision)
			$scope.computerDecisionImage = drawImages($scope.playerDecision)
		
		drawImages = (decision) -> 
			if decision == "Rock"
				'https://upload.wikimedia.org/wikipedia/commons/3/35/Stonehenge_on_27.01.08.jpg'
			else if decision == "Scissors"
				'http://au.fiskars.com/var/fiskars_emea/storage/images/frontpage2/crafting-sewing/products/scissors/classic-scissors/2679613-4-eng-EU/Classic-Scissors.png'
			else 
				'http://www.officexpress.co.uk/wp-content/uploads/2014/03/paper.jpg'
]


