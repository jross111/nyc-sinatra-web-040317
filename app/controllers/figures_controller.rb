class FiguresController < ApplicationController

  get '/figures' do
    @figures = Figure.all
    erb :'figures_index.html'
  end

  get '/figure/new' do
    erb :'figure/new.html'
  end






end
