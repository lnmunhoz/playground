<script lang="ts">
	export let firstName: string;
	export let lastName: string;

	$: fullName = firstName + ' ' + lastName;

	function changeFirstName(event: KeyboardEvent) {
		firstName = (event.target as HTMLInputElement).value;
	}

	function changeLastName(event: KeyboardEvent) {
		lastName = (event.target as HTMLInputElement).value;
	}
</script>

<input type="text" placeholder="firstName" on:keyup={changeFirstName} value={firstName} />
<input type="text" placeholder="lastName" on:keyup={changeLastName} value={lastName} />

<h1>Hello {fullName}!</h1>
