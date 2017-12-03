// See http://brunch.io for documentation.
module.exports = {
	files: {
		stylesheets: {joinTo: 'app.css'},
		javascripts: {joinTo: 'app.js'}
	},
	plugins: {
    static: {
      processors: [
        require('html-brunch-static')({
          processors: [
            require('pug-brunch-static')({
              fileMatch: '**/*.pug',
              fileTransform: (filename) => filename.replace(/\.pug$/, '.html')
            })
          ]
        })
      ]
    }
	}
}
