{
  'targets': [
    {
      'target_name': 'example',
      'sources': [ 'example.cxx', 'example_wrap.cxx' ],
      'include_dirs': ['./'],
      'link_settings': {
          'libraries': ['-L/home/colin/safeqp -lsafeqp']
      }
    }
  ]
}
