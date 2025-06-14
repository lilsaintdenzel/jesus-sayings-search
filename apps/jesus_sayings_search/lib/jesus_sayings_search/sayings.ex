defmodule JesusSayingsSearch.Sayings do
  use Ash.Domain

  resources do
    resource JesusSayingsSearch.Sayings.Saying
  end
end