defmodule Final.HumanResourcesFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Final.HumanResources` context.
  """

  @doc """
  Generate a employee.
  """
  def employee_fixture(attrs \\ %{}) do
    {:ok, employee} =
      attrs
      |> Enum.into(%{
        date_of_hire: ~D[2023-05-11],
        department: "some department",
        employee_id: 42,
        first_name: "some first_name",
        last_name: "some last_name"
      })
      |> Final.HumanResources.create_employee()

    employee
  end
end
