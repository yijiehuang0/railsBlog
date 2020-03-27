Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :posts do
    resources :comments
  end
  root "posts#index"
end

#why is it that we name our resources here post it is significant since it is dictated by the post controller, and thus it makex sense to have the post controller control this
#



# the resource :posts in this sense lets us create all the different routes associated the posts model, so we are going to be able to have
# and INDEX, CREATE, NEW, EDIT, SHOW, UPDATE, DESTROY in this case

#index can just show all our posts
#show just shows an individual post
#create makes a new post, no view, but saved it into the database and redirects
#edit displays a form for editing a post
#update action updates the post in the database, redirects to another page

#delete no page, deletes and then just updates int his case



# there are prefixes that you can edit as well for instance, if the edit feature is going to be edit_post, then you can add onto it edit_post_path(1) and that is the same as using edit posts



# what does root do in this case?