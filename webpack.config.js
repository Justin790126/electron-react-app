var path = require('path');

module.exports = {
  entry: './src/index.js',
    output: {
      path: path.join(__dirname, 'dist'),
      filename: 'bundle.js'
    },
  module: {
    loaders: [
      {
        test: /\.css$/, loaders: ['style-loader', 'css-loader']
      },
      {
        test: /\.scss$/, loaders: ['sass-loader']
      },
      {
        test: /\.js$/,
        exclude: /node_modules/,
        loaders: 'babel-loader',
        query: {
          presets: ['es2015', 'react']
        }
      },
    ]
  },
};
