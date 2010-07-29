dataSource {
    pooled = true
    driverClassName = "org.hsqldb.jdbcDriver"
    username = "sa"
    password = ""
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = true
    cache.provider_class = 'net.sf.ehcache.hibernate.EhCacheProvider'
}
// environment specific settings
environments {
    development {
        dataSource {
            //dbCreate = "update" // one of 'create', 'create-drop','update'
            //url = "jdbc:hsqldb:file:prodDb;shutdown=true"
            pooled = true
            dialect = org.hibernate.dialect.PostgreSQLDialect.class
            driverClassName = "org.postgresql.Driver"
            username = "postgres"
            password = "postgres"
            dbCreate = "update"
            url = "jdbc:postgresql://localhost:5432/jk?CharSet=UTF-8"
        }
    }
    test {
        dataSource {
            dbCreate = "update"
            url = "jdbc:hsqldb:mem:testDb"
        }
    }
    production {
        dataSource {
            dbCreate = "update"
            url = "jdbc:hsqldb:file:jkdb;shutdown=true"
        }
    }
}
