defmodule GeoApiTest do
  use ExUnit.Case
  doctest GeoApi

  test "saves valid records or rejects invalid ones" do
    assert GeoWorld.import_csv("data_dump_test.csv") == %{accepted: 1, rejected: 1, time_elapsed_in_microsecs: 243203, total_records: 2}
  end
end
