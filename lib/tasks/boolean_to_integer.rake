desc 'Convert boolean data to 1 and 0 for SQLite3'
task :boolean_to_integer do
  User.where("admin = 'true'").update_all(admin: 1)
  User.where("admin = 'false'").update_all(admin: 0)
  User.where("stat_admin = 'true'").update_all(stat_admin: 1)
  User.where("stat_admin = 'false'").update_all(stat_admin: 0)
end
