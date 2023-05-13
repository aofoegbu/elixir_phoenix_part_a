defmodule FinalWeb.EmployeeApiController do

  alias Final.HumanResources
  use FinalWeb, :controller

    def index(conn, _params) do
      employees = HumanResources.list_employees()
      render(conn, :index, employees: employees)
    end

end
