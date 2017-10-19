import 'babel-polyfill';
import React from 'react';
import ReactDOM from 'react-dom';
import CourseCorrection from '../react/src/containers/CourseCorrection'


document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(<CourseCorrection />, document.getElementById('app'));
})
