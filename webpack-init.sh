configName='webpack.config.js'

rm -rf ${configName}
touch ${configName}

echo "var path = require('path');" >> ${configName}
echo " " >> ${configName}

echo "module.exports = {" >> ${configName}

read -p "Where is your built entry point (default: ./src/index.js) ? " path
if [[ $path = "" ]]; then
  mkdir "src";
  path="./src/index.js"
  touch ${path}
fi
echo "  entry: '${path}', " >> ${configName}

read -p "Where is your built output js file folder (default: dist) ? " folderName
if [[ $folderName = "" ]]; then
  folderName="dist"
fi
echo "    output: {" >> ${configName}
echo "      path: path.join(__dirname, '${folderName}')," >> ${configName}
echo "      filename: 'bundle.js'" >> ${configName}
echo "    }," >> ${configName}

echo "    module: {" >> ${configName}

# loaders setting
echo "      loaders: [" >> ${configName}
echo "        {" >> ${configName}
echo "          test: /\.css$/, loaders: ['style-loader', 'css-loader']" >> ${configName}
echo "        }," >> ${configName}

echo "        {" >> ${configName}
echo "          test: /\.js$/,
          exclude: /node_modules/,
          loaders: 'babel-loader',
          query: {
            presets: ['es2015', 'react']
          }" >> ${configName}

echo "        }," >> ${configName}
echo "      ]" >> ${configName}

echo "    }," >> ${configName}


echo "};" >> ${configName}





