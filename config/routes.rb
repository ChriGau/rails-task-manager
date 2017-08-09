Rails.application.routes.draw do

resources :tasks

# # LIST ALL your tasks
# get "tasks", to: "tasks#index"

# # LIST details of 1 task
# get "tasks/:id", to: "tasks#show"

# # CREATE 1 task (2 steps)
# # step 1_display form to create a new task
# get "task/new", to: "tasks#new"
# #step 2_ get data from form and create instance
# post "tasks", to: "tasks#create"

# # EDIT 1 task (2 steps)
# # step 1_get form to edit existing instance
# get "tasks/:id/edit", to: "tasks#edit"
# # step 2_ get data from form and update existing instance
# patch "task", to: "tasks#update"

# # DELETE 1 task
# delete "tasks/:id", to: "tasks#destroy"

root to: "tasks#index"

end
