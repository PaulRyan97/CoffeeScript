stdin = process.openStdin()
stdin.setEncoding 'utf8'

console.log "Can you guess the number?"
console.log "Enter a number between 0 and 100"

number = Math.floor(Math.random() * 101)

stdin.on 'data', (input) -> 
	guess = input.trim() 
	if guess is number.toString()
		console.log "Correct, you win!"
		process.exit()
	else 
		console.log "Sorry, try again"