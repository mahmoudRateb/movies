json.extract! review, :id, :review, :stars, :user_id, :movie_id, :created_at, :updated_at
json.url review_url(review, format: :json)
