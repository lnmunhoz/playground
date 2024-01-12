<script lang="ts">
	import Greeter from '../lib/greeter.svelte';

	function onNameChange(name: string) {
		console.log('onNameChanged', name);
	}
</script>

<h1>Welcome to SvelteKit</h1>
<p>Visit <a href="https://kit.svelte.dev">kit.svelte.dev</a> to read the documentation</p>

<Greeter firstName="Jeff" lastName="Bezos" {onNameChange} />
