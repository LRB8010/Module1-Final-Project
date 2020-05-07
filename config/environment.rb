require "bundler"
require "require_all"
Bundler.require

require_all 'app'



ActiveRecord::Base.establish_connection(
    adapter: "sqlite3",
    database: "db/user.db"
)

ActiveRecord::Base.logger = Logger.new(STDOUT)

