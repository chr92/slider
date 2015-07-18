Reveal.initialize({
  controls: true,
  hideAddressBar: true,
        progress: true,
        history: true,
        center: true,
        transition: 'fade',

  dependencies: [
    // Cross-browser shim that fully implements classList - https://github.com/eligrey/classList.js/
    { src: 'lib/js/classList.js', condition: function() { return !document.body.classList; } },

    // Interpret Markdown in <section> elements
    { src: '/marked.js', condition: function() { return !!document.querySelector( '[data-markdown]' ); } },
    { src: '/markdown.js', condition: function() { return !!document.querySelector( '[data-markdown]' ); } },
  ]
});
