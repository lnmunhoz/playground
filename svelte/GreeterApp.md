```svelte
<script>
	let firstName = 'Lucas'
	let lastName = 'Munhoz'

	$: fullName = firstName + ' ' + lastName

	function changeFirstName(event) {
		firstName = event.target.value
	}

	function changeLastName(event) {
		lastName = event.target.value
	}

</script>

<input type="text" placeholder="firstName" on:keyup={changeFirstName} value={firstName} />
<input type="text" placeholder="lastName" on:keyup={changeLastName} value={lastName}  />

<h1>Hello {fullName}!</h1>
```
