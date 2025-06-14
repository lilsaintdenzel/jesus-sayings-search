// If you want to use Phoenix channels, run `mix help phx.gen.channel`
// to get started and then uncomment the line below.
// import "./user_socket.js"

// You can include dependencies in two ways.
//
// The simplest option is to put them in assets/vendor and
// import them using relative paths:
//
//     import "../vendor/some-package.js"
//
// Alternatively, you can `npm install some-package --prefix assets` and import
// them using a path starting with the package name:
//
//     import "some-package"
//

// Include phoenix_html to handle method=PUT/DELETE in forms and buttons.
import "phoenix_html"
// Establish Phoenix Socket and LiveView configuration.
import {Socket} from "phoenix"
import {LiveSocket} from "phoenix_live_view"
import topbar from "../vendor/topbar"

let csrfToken = document.querySelector("meta[name='csrf-token']").getAttribute("content")
let liveSocket = new LiveSocket("/live", Socket, {
  longPollFallbackMs: 2500,
  params: {_csrf_token: csrfToken}
})

// Show progress bar on live navigation and form submits
topbar.config({barColors: {0: "#29d"}, shadowColor: "rgba(0, 0, 0, .3)"})
window.addEventListener("phx:page-loading-start", _info => topbar.show(300))
window.addEventListener("phx:page-loading-stop", _info => topbar.hide())

// connect if there are any LiveViews on the page
liveSocket.connect()

// expose liveSocket on window for web console debug logs and latency simulation:
// >> liveSocket.enableDebug()
// >> liveSocket.enableLatencySim(1000)  // enabled for duration of browser session
// >> liveSocket.disableLatencySim()
window.liveSocket = liveSocket

// Google-style search enhancements
document.addEventListener('DOMContentLoaded', function() {
  // Search suggestions
  const searchSuggestions = [
    'blessed', 'love', 'faith', 'prayer', 'kingdom', 'eternal life', 
    'forgive', 'peace', 'salvation', 'follow me', 'good shepherd',
    'light of the world', 'bread of life', 'way truth life', 'beatitudes',
    'lord\'s prayer', 'golden rule', 'prodigal son', 'good samaritan',
    'mustard seed', 'great commission', 'resurrection', 'cross'
  ];

  // Add autocomplete functionality
  const searchInputs = document.querySelectorAll('input[name="search"]');
  
  searchInputs.forEach(input => {
    // Focus on search input with '/' key
    document.addEventListener('keydown', function(e) {
      if (e.key === '/' && !input.matches(':focus')) {
        e.preventDefault();
        input.focus();
      }
    });

    // Auto-suggestions on input
    input.addEventListener('input', function() {
      // Remove existing suggestions
      const existingSuggestions = document.querySelector('.search-suggestions');
      if (existingSuggestions) {
        existingSuggestions.remove();
      }

      const value = this.value.toLowerCase();
      if (value.length > 1) {
        const matches = searchSuggestions.filter(suggestion => 
          suggestion.toLowerCase().includes(value)
        ).slice(0, 5);

        if (matches.length > 0) {
          const suggestionsDiv = document.createElement('div');
          suggestionsDiv.className = 'search-suggestions absolute top-full left-0 right-0 bg-white border border-gray-200 shadow-lg rounded-b-lg z-50';
          
          matches.forEach((match) => {
            const suggestionItem = document.createElement('div');
            suggestionItem.className = 'px-4 py-2 hover:bg-gray-100 cursor-pointer text-sm border-b border-gray-100 last:border-b-0';
            suggestionItem.textContent = match;
            
            suggestionItem.addEventListener('click', () => {
              input.value = match;
              suggestionsDiv.remove();
              input.form.submit();
            });
            
            suggestionsDiv.appendChild(suggestionItem);
          });

          // Position the suggestions
          const inputContainer = this.closest('.relative');
          if (inputContainer) {
            inputContainer.appendChild(suggestionsDiv);
          }
        }
      }
    });

    // Hide suggestions when clicking outside
    document.addEventListener('click', function(e) {
      const suggestions = document.querySelector('.search-suggestions');
      if (suggestions && !suggestions.contains(e.target) && !input.contains(e.target)) {
        suggestions.remove();
      }
    });

    // Handle arrow keys for suggestions
    input.addEventListener('keydown', function(e) {
      const suggestions = document.querySelector('.search-suggestions');
      if (suggestions) {
        const items = suggestions.querySelectorAll('div');
        let selected = suggestions.querySelector('.bg-blue-100');
        
        if (e.key === 'ArrowDown') {
          e.preventDefault();
          if (selected) {
            selected.classList.remove('bg-blue-100');
            const next = selected.nextElementSibling || items[0];
            next.classList.add('bg-blue-100');
          } else {
            items[0]?.classList.add('bg-blue-100');
          }
        } else if (e.key === 'ArrowUp') {
          e.preventDefault();
          if (selected) {
            selected.classList.remove('bg-blue-100');
            const prev = selected.previousElementSibling || items[items.length - 1];
            prev.classList.add('bg-blue-100');
          } else {
            items[items.length - 1]?.classList.add('bg-blue-100');
          }
        } else if (e.key === 'Enter') {
          selected = suggestions.querySelector('.bg-blue-100');
          if (selected) {
            e.preventDefault();
            input.value = selected.textContent;
            suggestions.remove();
            input.form.submit();
          }
        } else if (e.key === 'Escape') {
          suggestions.remove();
        }
      }
    });
  });

  // Add Google-style instant search delay
  let searchTimeout;
  searchInputs.forEach(input => {
    input.addEventListener('input', function() {
      clearTimeout(searchTimeout);
      const form = this.form;
      
      // Auto-submit after 1 second of no typing (like Google Instant)
      searchTimeout = setTimeout(() => {
        if (this.value.length > 2) {
          form.submit();
        }
      }, 1000);
    });
  });

  // Add search result hover effects
  const resultItems = document.querySelectorAll('.group');
  resultItems.forEach(item => {
    item.addEventListener('mouseenter', function() {
      this.style.backgroundColor = '#f8fafc';
    });
    item.addEventListener('mouseleave', function() {
      this.style.backgroundColor = 'transparent';
    });
  });
});

