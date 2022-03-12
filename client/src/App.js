
import { Link, Outlet } from 'react-router-dom';
import './App.css';

function App() {
  return (
    <div className="App">
      <nav>
        <Link to='/'>Home</Link>{'~~'}
        <Link to='/task'>Task</Link>{''}
      </nav>
      <Outlet />
    </div>
  );
}

export default App;
