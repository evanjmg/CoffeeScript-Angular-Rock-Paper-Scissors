@Rps.factory 'GameService', () -> 
	self = {}
	self.getComputerMove = -> 
		randomNumber = Math.random()
		if randomNumber < 0.33
			self.computerMove = "Rock"
		else if randomNumber < 0.66
			self.computerMove = "Paper"
		else 
			self.computerMove = "Scissors"

	getWinner = (playerMove) -> 

		winningMap = 
			Rock: "Paper"
			Paper: "Scissors"
			Scissors: "Rock"
		if playerMove == winningMap[self.computerMove]
			winner = "Player"
		else if playerMove == self.computerMove
			winner = "tie" 
		else 
			winner = "Computer"
		winner

	self.decide = (decision) -> 
		return getWinner(decision)


	self

