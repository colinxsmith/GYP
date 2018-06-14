{
  'targets': [
    {
      'target_name': 'example',
      'sources': [ 'example_wrap.cxx' ],
      'include_dirs': ['./'],
      'libraries': ['-L ~/safeqp', '-lsafeqp']
    }
  ]
}
