json.result do
    json.partial! 'topics', locals: { topic: @topic }
end
