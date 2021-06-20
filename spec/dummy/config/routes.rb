# frozen_string_literal: true

Dummy::Application.routes.draw do
  mount OkComputer::Engine, at: "/health_checks"
end
