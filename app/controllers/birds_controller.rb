class BirdsController < ApplicationController

    def index
        render json: Bird.all, status: :ok
    end

    def show
        bird = Bird.find_by(id: params[:id])
        if bird
            render json: bird, status: :ok
        else
            render json: { error: 'Bird does not exist' }, status: 404
        end
    end

end
