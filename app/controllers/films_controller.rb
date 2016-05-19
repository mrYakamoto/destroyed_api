class FilmsController < ApplicationController
  before_action :set_film, only: [:show, :update, :destroy]

  # GET /films
  # GET /films.json
  def index
    puts "="*20
    puts "INDEX"
    puts "="*20
    @films = Film.all

    render json: @films
  end

  # GET /films/1
  # GET /films/1.json
  def show
    puts "="*20
    puts "SHOW"
    puts "="*20

    render json: @film
  end

  # POST /films
  # POST /films.json
  def create
    puts "="*20
    puts "CREATE"
    puts "="*20
    @film = Film.new(film_params)

    if @film.save
      render json: @film, status: :created, location: @film
    else
      render json: @film.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /films/1
  # PATCH/PUT /films/1.json
  def update
    puts "="*20
    puts "UPDATE"
    puts "="*20
    @film = Film.find(params[:id])

    if @film.update(film_params)
      head :no_content
    else
      render json: @film.errors, status: :unprocessable_entity
    end
  end

  # DELETE /films/1
  # DELETE /films/1.json
  def destroy
    puts "="*20
    puts "DESTROY"
    puts "="*20
    @film.destroy

    head :no_content
  end

  private

    def set_film
      @film = Film.find(params[:id])
    end

    def film_params
      params[:film]
    end
end
