defmodule Grades.Calculator do

#  def percentage_grade(mark) do
#    :rand.uniform(100)
#  end

#  def letter_grade(mark) do
#    Enum.at(['A+', 'A', 'A-', 'B+', 'B', 'C+', 'C', 'D+', 'D', 'E', 'F'], :rand.uniform(10))
#  end

#  def numeric_grade(mark) do
#    :rand.uniform(10)
#  end

  def percentage_grade(%{homework: h, labs: l, midterm: m, final: f}) do
    mark = calculate_grade(h,l,m,f)
    round(mark * 100)
  end

  def letter_grade(%{homework: h, labs: l, midterm: m, final: f}) do
    mark = calculate_grade(h,l,m,f)

    cond do
      mark >= 0.90 -> "A+"
      mark >= 0.85 -> "A"
      mark >= 0.80 -> "A-"
      mark >= 0.75 -> "B+"
      mark >= 0.70 -> "B"
      mark >= 0.65 -> "C+"
      mark >= 0.60 -> "C"
      mark >= 0.55 -> "D+"
      mark >= 0.50 -> "D"
      mark >= 0.40 -> "E"
      :else -> "F"
    end

  end

  def numeric_grade(%{homework: h, labs: l, midterm: m, final: f}) do
    mark = calculate_grade(h,l,m,f)

    cond do
      mark >= 0.90 -> 10
      mark >= 0.85 -> 9
      mark >= 0.80 -> 8
      mark >= 0.75 -> 7
      mark >= 0.70 -> 6
      mark >= 0.65 -> 5
      mark >= 0.60 -> 4
      mark >= 0.55 -> 3
      mark >= 0.50 -> 2
      mark >= 0.40 -> 1
      :else -> 0
    end
  end

  def calculate_grade(h,l,m,f) do
    h_average =
    if Enum.count(h) == 0 do
      0
    else
      Enum.sum(h) / Enum.count(h)
    end

    l_average =
    if Enum.count(l) == 0 do
      0
    else
      Enum.sum(l) / Enum.count(l)
    end

    h_average * 0.1 + l_average * 0.15 + m * 0.25 + f * 0.50
  end

end
