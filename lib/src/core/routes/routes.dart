enum Routes {
  splash('splash', '/'),
  login('login', '/login'),
  dashboard('dashboard', '/dashboard'),
  addEditStudent('addEditStudent', '/addEditStudent');

  final String name;
  final String path;

  const Routes(this.name, this.path);
}
