Rails.application.routes.draw do
  devise_for :users

  root to: "random_words#show"
end
