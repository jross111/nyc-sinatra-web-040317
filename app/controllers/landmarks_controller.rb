class LandmarksController < ApplicationController

  get '/landmarks' do
    @landmarks = Landmark.all
    erb :'landmarks/index'
  end

  get '/landmarks/new' do
    erb :'landmarks/new'
  end

  get '/landmarks/:id' do
    @landmark = Landmark.find(params["id"])
    erb :'landmarks/show'
  end

  post '/landmarks' do
    Landmark.create(params[:landmarks])
    redirect to('/landmarks')
  end

  get '/landmarks/:id/edit' do
    @landmark = Landmark.find(params["id"])
    erb(:"landmarks/edit")
  end

  patch '/landmarks/:id' do
    landmark = Landmark.find(params["id"])
    if landmark.update(params[:landmark])
      redirect to("landmarks/#{landmark.id}")
    else
      redirect to("/landmarks/#{landmark.id}/edit")
    end
  end

end
