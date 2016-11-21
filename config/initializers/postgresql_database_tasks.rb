module ActiveRecord
  module Tasks
    class PostgreSQLDatabaseTasks
      def drop
        establish_master_connection
        connection.select_all "select pg_terminate_backend(pg_stat_activity.pid) from pg_stat_activity where datname='#{configuration['database']}' AND state='idle';"
        connection.drop_database configuration['database']
      end
    end
  end
end

# https://www.krautcomputing.com/blog/2014/01/10/how-to-drop-your-postgres-database-with-rails-4/

# Note 1: You need to run the db:drop Rake task with the environment option so the initializer is picked up:  rake environment db:drop

# Note 2: As pointed out in the comments, the pg_stat_activity.pid column was called  pg_stat_activity.procpid in Postgres < 9.2. Make sure to replace it if you're working with an older version of Postgres.