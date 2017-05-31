import React from 'react';
import ReactDOM from 'react-dom';
import Hello from './components/hello.js';
import HelloGL from './components/helloGL.js';
const {Surface} = require('gl-react-dom');

ReactDOM.render(
  <div>
    <Hello />
    <Surface width={900} height={504}>
      <HelloGL blue={0.5} />
    </Surface>
  </div>,
  document.getElementById('app')
);
