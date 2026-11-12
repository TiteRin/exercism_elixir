defmodule FreelancerRates do

  @billable_hours_by_day 8.0
  @billable_days_in_month 22

  def daily_rate(hourly_rate) do
    hourly_rate * @billable_hours_by_day
  end

  def apply_discount(before_discount, discount) do
    before_discount * (1 - discount / 100)
  end

  defp daily_discounted_rate(hourly_rate, discount) do
    hourly_rate
    |> daily_rate
    |> apply_discount(discount)
  end

  def monthly_rate(hourly_rate, discount) do
    daily_discounted_rate(hourly_rate, discount) * @billable_days_in_month
    |> ceil
  end

  def days_in_budget(budget, hourly_rate, discount) do
    budget / daily_discounted_rate(hourly_rate, discount)
    |> Float.floor(1)
  end
end
