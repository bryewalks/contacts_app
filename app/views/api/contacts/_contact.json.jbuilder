json.id contact.id
json.first_name contact.first_name
json.middle_name contact.middle_name
json.last_name contact.last_name
json.email contact.email
json.phone_number contact.japan_prefix_phone_number
json.updated_at contact.updated_at
json.bio contact.bio

json.groups do 
  json.array! contact.groups, partial: 'api/groups/group', as: :group
end

json.formatted do
  json.updated_at contact.friendly_updated_at
  json.full_name contact.full_name
end