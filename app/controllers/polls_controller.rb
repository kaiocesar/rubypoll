class PollsController < ApplicationController
    def create
    end

    def show
        @poll = Poll.where(:id => params[:id])
        render json: @poll.to_json
    end

    def stats

    end

    def vote
    end
end
