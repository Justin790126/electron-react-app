npm init

read -p "Do you want Electron support ? (yes/no) " yn
case $yn in
  [Yy]* )
    echo "Start install Electron modules ..."
    npm install --save-dev electron electron-reload electron-packager
    ;;
  * )
    ;;
esac

echo "\n"

read -p "Do you want ES6 support ? (yes/no) " yn
case $yn in
  [Yy]* )
    echo "Start install ES6 build modules ..."
    npm install --save-dev babel-core babel-loader babel-preset-es2015 babel-preset-react
    npm install --save-dev webpack webpack-dev-server
    npm install --save-dev css-loader node-sass sass-loader style-loader
    ;;
  * )
    ;;
esac

echo "\n"

read -p "Do you want Eslint support ? (yes/no) " yn
case $yn in
  [Yy]* )
    echo "Start install Eslint modules ..."
    npm install --save-dev eslint eslint-loader
    
    read -p "Do you want Eslint template ? (yes/no) " yn
    case $yn in
      [Yy]* )
        ./node_modules/.bin/eslint eslint --init
        ;;
          * ) 
        echo "\n"    
        ;;
    esac

    
        ;;

      * )
        ;;
esac

    
echo "\n"
   
read -p "Do you want React support ? (yes/no) " yn
case $yn in
  [Yy]* )
    echo "Start install React modules ..."
    npm install --save react react-dom 
    echo "\n"

    read -p "Do you want gl-react support ? (yes/no) " yn
    case $yn in
      [Yy]* )
        echo "Start install GL React modules ..."
        npm install --save gl-react gl-react-dom
        ;;
          * )
        ;;

    esac  

    ;;

      * )
    ;;
esac

echo "\n"
