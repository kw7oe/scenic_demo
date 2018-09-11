# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

config :timer, :viewport, %{
      name: :main_viewport,
      size: {700, 600},
      default_scene: {Timer.Scene.Splash, []},
      drivers: [
        %{
          module: Scenic.Driver.Glfw,
          name: :glfw,
          opts: [resizeable: false, title: "Timer"],
        }
      ]
    }

