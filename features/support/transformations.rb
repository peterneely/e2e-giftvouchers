include Impersonators

Transform /^a non AU site$/ do |site|
  non_au_site
end

Transform /^the AU site$/ do |site|
  au_site
end