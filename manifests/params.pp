class graphite::params {
  $manage_carbon  = false
  $pkg            = 'graphite-web'
  $pkg_vers       = 'installed'

  #Local_settings.py
  $graphite_root = '/usr/share/graphite'
  $secret_key = 'abcdefghijk'
  $allowed_hosts = [ '*' ]
  $time_zone = 'America/New_York'
  $log_rendering_performance = true
  $log_cache_performance = true
  $log_metric_access = true
  $log_dir = '/var/log/graphite-web/'
  $index_file = '/var/lib/graphite-web/index'
  $conf_dir = '/etc/graphite-web'
  $storage_dir = '/var/lib/graphite-web'
  $content_dir = '/usr/share/graphite/webapp/content'
  $dashboard_conf = '/etc/graphite-web/dashboard.conf'
  $graphtemplates_conf = '/etc/graphite-web/graphtemplates.conf'
  $whisper_dir = '/var/lib/carbon/whisper'
  $rrd_dir = '/var/lib/carbon/rrd'
  $data_dirs = ['WHISPER_DIR', 'RRD_DIR']
  $index_file = '/var/lib/graphite-web/index'

}
