class PollsController < ApplicationController
    def index
    end

    def create
    end

    def show
        @poll = {
            "poll_id": 1,
            "poll_description": "This is the description",
            "options": [
                {"option_id": 1, "option_description": "First option"},
                {"option_id": 2, "option_description": "Second option"},
                {"option_id": 3, "option_description": "Third option"},
            ]
        }
    end

    def stats
    end

    def vote
    end
end
