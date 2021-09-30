import React from 'react';
import ReactDOM from 'react-dom';
import Timeline from './components/Timeline';
import './index.css';
// import App from './App';
import reportWebVitals from './reportWebVitals';

const items = [
  {
    name: 'Step 1',
    active: true,
  },
  {
    name: 'Step 2',
    active: true,
  },
  {
    name: 'Step 3',
    active: true,
  },
  {
    name: 'Step 4',
    active: false,
  }
]

ReactDOM.render(
  <React.StrictMode>
    <Timeline items={items} />
  </React.StrictMode>,
  document.getElementById('root')
);

// If you want to start measuring performance in your app, pass a function
// to log results (for example: reportWebVitals(console.log))
// or send to an analytics endpoint. Learn more: https://bit.ly/CRA-vitals
reportWebVitals(console.log);
