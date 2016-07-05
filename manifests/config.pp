class graphite::config (
   $graphite_root             = $::graphite::graphite_root,
   $secret_key                = $::graphite::secret_key,
   $allowed_hosts             = $::graphite::allowed_hosts,
   $time_zone                 = $::graphite::time_zone,
   $log_rendering_performance = $::graphite::log_rendering_performance,
   $log_cache_performance     = $::graphite::log_cache_performance,
   $log_metric_access         = $::graphite::log_metric_access,
   $conf_dir                  = $::graphite::conf_dir,
   $storage_dir               = $::graphite::storage_dir,
   $content_dir               = $::graphite::content_dir,
   $dashboard_conf            = $::graphite::dashboard_conf,
   $graphtemplates_conf       = $::graphite::graphtemplates_conf,
   $whisper_dir               = $::graphite::whisper_dir,
   $rrd_dir                   = $::graphite::rrd_dir,
   $data_dirs                 = $::graphite::data_dirs,
   $log_dir                   = $::graphite::log_dir,
   $index_file                = $::graphite::index_file,
  ) {
    file {'/etc/graphite-web/local_settings.py':
      owner   => 'root',
      group   => 'root',
      mode    => '0644',
      content => template('graphite/local_settings.py.erb'),
    }

  }
