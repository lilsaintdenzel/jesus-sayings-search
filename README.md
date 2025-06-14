# 🕊️ Jesus Sayings Search

A comprehensive web application for searching through 550+ canonical sayings of Jesus from the Gospels.

## Features

- **550+ Canonical Sayings**: Complete collection from Matthew, Mark, Luke, and John
- **Case-Insensitive Search**: Find sayings by keywords, context, or themes
- **18 Categories**: Browse by topic (Parables, Love/Compassion, Kingdom of Heaven, etc.)
- **52 Themes**: Detailed thematic organization for deeper study
- **Responsive Design**: Beautiful, Google-style interface that works on all devices
- **Production Ready**: Deployed with Fly.io, Railway, Render, or Heroku

## Quick Start

```bash
# Clone the repository
git clone https://github.com/lilsaintdenzel/jesus-sayings-search.git
cd jesus_sayings_search_umbrella

# Install dependencies
mix deps.get

# Setup database
mix ecto.setup

# Start the server
mix phx.server
```

Visit `http://localhost:4000` to explore the sayings!

## Deployment

See [DEPLOYMENT.md](DEPLOYMENT.md) for comprehensive deployment instructions across multiple platforms.

**Recommended**: Deploy with Fly.io for optimal Elixir performance and cost-effectiveness (~$4/month).

## Technology Stack

- **Backend**: Elixir/Phoenix with Ash Framework
- **Database**: PostgreSQL with full-text search
- **Frontend**: Phoenix LiveView with Tailwind CSS
- **Deployment**: Docker + Fly.io/Railway/Render/Heroku

## Database

- **550 Sayings**: Canonical Gospel material including parables, teachings, and dialogues
- **18 Categories**: Organized by major theological themes
- **52 Themes**: Detailed topical organization for Bible study
- **4 Books**: Matthew, Mark, Luke, John with verse references

## Development

```bash
# Run tests
mix test

# Check formatting
mix format

# Type checking (if using Dialyzer)
mix dialyzer
```

## Contributing

This project represents a careful curation of canonical Gospel sayings. Contributions welcome for:
- UI/UX improvements
- Performance optimizations
- Additional search features
- Translation support

## License

MIT License - Freely share the word! 🌍✨
