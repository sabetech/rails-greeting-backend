class Api::V1::GreetingsController < ApplicationController
    def index
        greetings = Greeting.all.sample.message
        if greetings
          render json: { status: 'SUCCESS', message: 'Fetched all the greetings successfully', data: greetings },
                 status: :ok
        else
          render json: greetings.errors, status: :bad_request
        end
    end
end
