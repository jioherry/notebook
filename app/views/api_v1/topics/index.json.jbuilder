json.result do
  json.array! @topics, partial: 'topics', as: :topic
end