npm init
    
npm install --save-dev electron electron-reload electron-packager
npm install --save-dev babel-core babel-loader babel-preset-es2015 babel-preset-react
npm install --save-dev eslint eslint-loader
npm install --save-dev webpack webpack-dev-server
npm install --save-dev css-loader node-sass sass-loader style-loader

while true; do
  read -p "Want React ?" yn
  case $yn in
    [Yy]* )
      npm install --save react react-dom;
      read -p "Want gl-react ?" yes
      case $yes in
        [Yy]* ) npm install --save gl-react gl-react-dom; break;;
        [Nn]* ) break;;
      esac
      break;;
    [Nn]* ) break;;
  esac
done

    
