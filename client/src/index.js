import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import App from './App';
import reportWebVitals from './reportWebVitals';
import {BrowserRouter, Routes, Route} from 'react-router-dom'
import Home from './pages/Home';
import Task from './pages/Task';
import Task_Show from './TaskShow';
import Task_Form from './pages/TaskForm';
import About from './pages/About';

ReactDOM.render(
  <BrowserRouter>
    <Routes>
      <Route path="/" element={<App />}>
        <Route index element={<Home />} />
        <Route path='about' element={<About />} />
        <Route path='task' element={<Task />} />
        <Route path='task/:id' element={<Task_Show/>} />
        <Route path='task/new' element={<Task_Form/>} />
        <Route path='task/:id/edit' element={<Task_Form/>} />
          {/*<Route path="teams" element={<Teams />}>
          <Route path=":teamId" element={<Team />} />
          <Route path="new" element={<NewTeamForm />} />
          <Route index element={<LeagueStandings />} /> 
        </Route>*/}
      </Route>
    </Routes>
  </BrowserRouter>,
  document.getElementById('root')
);

// If you want to start measuring performance in your app, pass a function
// to log results (for example: reportWebVitals(console.log))
// or send to an analytics endpoint. Learn more: https://bit.ly/CRA-vitals
reportWebVitals();
