defmodule GradesWeb.PageLive do
  use GradesWeb, :live_view
  alias Grades.Calculator

  @impl true
  def mount(_params, _session, socket) do
    socket
    |> assign_grades()
    |> my_reply(:ok)
  end

  @impl true
  def handle_event("calculate", fields, socket) do
    grades = %{
      homework: lookup(fields, "h", socket.assigns[:num_homeworks]),
      labs: lookup(fields, "l", socket.assigns[:num_labs]),
      midterm: fields["midterm"],
      final: fields["final"]
    }

    socket
    |> assign(:grades, grades)
    |> assign(:letter_grade, Calculator.letter_grade(grades))
    |> assign(:percentage_grade, Calculator.percentage_grade(grades))
    |> assign(:numeric_grade, Calculator.numeric_grade(grades))
    |> my_reply(:noreply)
  end

  defp assign_grades(socket) do
    grades = %{homework: [], labs: [], midterm: nil, final: nil}

    socket
    |> assign(:num_homeworks, 4)
    |> assign(:num_labs, 6)
    |> assign(:grades, grades)
    |> assign(:letter_grade, "--")
    |> assign(:percentage_grade, "--")
    |> assign(:numeric_grade, "--")
  end

  defp lookup(fields, prefix, num) do
    Enum.reduce(num..1, [], fn n, acc -> [fields["#{prefix}#{n}"] | acc] end)
  end

  defp my_reply(socket, ok), do: {ok, socket}
end
