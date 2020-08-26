require 'csv'
CO_EMISSIONS_PER_CAPITA = CSV.read("db/co-emissions-per-capita.csv", headers: true)
COUNTRIES = CO_EMISSIONS_PER_CAPITA.by_col['Entity'].uniq.map(&:to_sym)