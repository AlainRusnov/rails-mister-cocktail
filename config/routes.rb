Rails.application.routes.draw do

  resources :cocktails do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: :destroy  # put destroy outside of nested loop -> because ends up being coktails/cocktail_id/doses/:id and not /doses/:id
end
