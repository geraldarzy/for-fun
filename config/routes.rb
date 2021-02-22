Rails.application.routes.draw do
  resources :people
  #index to show all
  #characters_path because list of characters, plural
  get '/characters', to: 'characters#index' #shows list of all ###index also known as characters_path
  #  the resource link    controller#action    get'/resource/link', to: 'controller#action'

  #now make a new/create routes _______________________________________________________________________________________

  #new to render new form  
  #new_character_path because new character, singular
  get '/characters/new', to: 'characters#new' #renders new form ###new also known as new_character_path

  #create to get params from new and create new model instance, then redirects you to show page of that new creation
  #characters_path because same as beginning
  post '/characters', to: 'characters#create'
  #link is same of index link so the form should direct a post to index and this action should redirect to show page 
  #since link is the same, helper route is also the same... characters_path

  #now make show route _______________________________________________________________________________________________
  #character_path() because singular character, plus takes in id
  get 'characters/:id', to: 'characters#show', as:'character'

  #now make edit/update routes ________________________________________________________________________________________

  #edit to render edit form
  #edit_character_path() because edit singular character
  get '/characters/:id/edit', to: 'characters#edit', as:'edit_character'#edit_character_path()    <---- takes in a the id to route to the path

  #update to save the edits
  #character_path() because patch shares paths, redirect to show in controller
  patch '/characters/:id', to: 'characters#update' #character_path()
  #    since path is same as show, so is helper
  #    post and patch routes dont really have a path, they share a path with another route, do work, then re-directs you

  #character_path() shares path, need to know which character to update/destroy patch/delete
  delete '/characters/:id', to:'characters#destroy' 

end
