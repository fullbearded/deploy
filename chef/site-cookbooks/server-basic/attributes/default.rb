default['server-basic']['users'] = {
    "redis"     => ['/data/pids/redis', '/data/logs/redis', '/data/data/redis'],
    'mysql'     => ['/data/pids/mysql', '/data/logs/mysql', '/data/data/mysql'],
    'mongod'    => ['/data/pids/mongodb', '/data/logs/mongodb', '/data/data/mongodb'],
    'www'       => ['/data/pids/nginx', '/data/logs/nginx'],
    'memcached' => ['/data/pids/memcached', '/data/logs/memcached'],
    'monit'     => ['/data/pids/monit', '/data/logs/monit', '/data/data/monit']
}

default['server-basic']['basic_package'] = [
    "tree", "tar", "wget"
]

