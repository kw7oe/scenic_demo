defmodule Timer.Scene.Splash do
  use Scenic.Scene

  alias Scenic.Graph
  alias Scenic.ViewPort

  import Scenic.Primitives
  import Scenic.Components

  def init(_, opts) do
    {:ok, %ViewPort.Status{size: {vp_width, vp_height}}} = opts[:viewport]
                                                           |> ViewPort.info()
    middle = {vp_width / 2, vp_height / 2}

    graph = Graph.build(font: :roboto, font_size: 36,theme: :dark)
            |> text("Hello World", id: :title, text_align: :center, font_size: 100, translate: middle)
            |> text_field( {"Sample Text", :text_id}, translate: {20,20} )
            |> push_graph

    {:ok, graph}
  end



end
