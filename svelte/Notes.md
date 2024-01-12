Notes from video:
https://www.youtube.com/watch?v=UGBJHYpHPvA&

## CSS

Styling is scoped.

To use global styles, use `:global()`.

```html
<style>
  :global(.global-class) {
    color: red;
  }
</style>
```

To make animation available:

```html
<style>
  @keyframes -global-fade {
    from {
      opacity: 0;
    }
    to {
      opacity: 1;
    }
  }
</style>
```

To use it:

```html
<div class="global-fade"></div>
```

## Passing data to component

```html
<script>
  let content = "Hello World";
  let src = "https://placekitten.com/200/300";
</script>
```

```svelte
<h1>{content}</h1>

<!-- This are all valid -->
<img alt="kitten" src="{src}" />
<img alt="kitten" src={src} />
<img alt="kitten" {src} />
```

## Reactivity

```svelte
<script>
	let name = 'world';
	let src = "https://placekitten.com/200/300"
	let count = 0

	function incrementCount () {
		count++
	}
</script>

<h1>Hello {name}!</h1>
<img alt="kitten" {src} />


<div>
	{count} <button on:click={incrementCount}>Count</button>
</div>
```

For the DOM to be updated, the variable must be reassigned.
Example if using an array, if you use `push` or `pop` the DOM will not be updated.
Instead, use `array = [...array, newItem]` for example.

# tick()

`tick` function is used to wait for the DOM to be updated.

```svelte
<script>
	import { tick } from 'svelte';

  let count = 0;

  function increment() {
    count++;

		tick().then(() => {
      console.log('after DOM', count);
    });

		console.log('before DOM', count);
  }
</script>

<button on:click={increment}>Increment</button>
```
