
import './App.css';
import 'bootstrap/dist/css/bootstrap.min.css';
 import { Nav , Dash ,Input} from './content';
function App() {
  return (
    <div className="App">
    <Nav/>
   <div className='d-flex'>
    <Dash/>
    <Input/>
</div>
    </div> 
  );
}
export default App;
