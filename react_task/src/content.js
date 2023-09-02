import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faUser } from '@fortawesome/free-solid-svg-icons';
import { faUserTie} from '@fortawesome/free-solid-svg-icons';
import { faBookOpen} from '@fortawesome/free-solid-svg-icons';

import logo1 from './logo1.png';
export function Nav() {
  return ( 
    <>
      <nav className="w-100    d-flex justify-content-between       ">
        <div  className='d-flex  p-2' >
          
         <div className='pt-3'>    <img src={logo1} alt="this is car image"  style={{width:"50px", height:"50px"}}  /></div>
            
       <p  className='p-2 pt-4 title  d-flex justify-content-between'style={{width:"180px"}}>One School</p>
        </div>
        <div className='pt-3 p-2' >
          <img
            src="https://img.freepik.com/free-photo/clueless-hesitant-male-with-trendy-haircut-wears-fashionable-outfit-spectacles-shruggs-shoulders-with-uncertainty-makes-choice-isolated-white-wall-people-body-language-concept_273609-16020.jpg?t=st=1691865809~exp=1691866409~hmac=1829cc45c1c1151f8c1dfafd33a565307879cafb7a1cf14b5b8e3d5734b91012"
            alt="Right Image"
            className="rounded-circle " 
          />
        </div>
      </nav>
    </>
  );
}
export function Dash() {
  return (
    <div className="dash  p-4 pt-5 " style={{height:"100vh"}}>
      <p style={{paddingRight:'5px'}}> <FontAwesomeIcon icon={faUser} style={{paddingRight:'7px'}}/>STUDENTS</p>
      <p><FontAwesomeIcon icon={faUserTie} style={{paddingRight:'7px'}}/>
STAFF</p>
      <p ><FontAwesomeIcon icon={faBookOpen}  className="pt-2"style={{paddingRight:'7px'}}/>
EXAMS</p>
    </div>
  );
}
export function Input() {
  return (
    <> 
    <div  className='p-3 w-100'>
    <div className=' d-flex  justify-content-between pb-2'   >
<p style={{foat:"left"}}>STUDENT</p>
  <input type='button' value="Click me"  className="b1" style={{float:"right"}}/>
</div>
<div  >
    <table className='w-100 table table-bordered' >
      <tr style={{marginRight:"1900px"}}>
        <th >
        R NO.
        </th>
        <th>
        FULL NAME
        </th>
        <th>
        BRANCH
        </th>
        <th>
        MOBILE
        </th>
        <th>
        EMAIL
        </th>
      </tr>
      <tr>
        <td>
        01
        </td>
        <td>
        Akash Saji
        </td>
        <td>
        Computer Science
        </td>
        <td>
     9061990236
        </td>
        <td>
       akashsaji@gmail.com
        </td>
      </tr>
      <tr>
        <td>
        02
        </td>
        <td>
        Aswin Saji
        </td>
        <td>
        Computer Science
        </td>
        <td>
     9064990236
        </td>
        <td>
       aswinsaji@gmail.com
        </td>
      </tr>
      <tr>
        <td>
        03
        </td>
        <td>
        Aswin Sandeep
        </td>
        <td>
        Computer Science
        </td>
        <td>
     9024990236
        </td>
        <td>
       aswinsandeep@gmail.com
        </td>
      </tr>
      <tr>
        <td>
        04
        </td>
        <td>
        niswin Sandeep
        </td>
        <td>
        Computer Science
        </td>
        <td>
     9024990236
        </td>
        <td>
     nsandedeep@gmail.com
        </td>
      </tr>
      <tr>
        <td>
        05
        </td>
        <td>
         Sandeep Aswin
        </td>
        <td>
        Computer Science
        </td>
        <td>
     9024490236
        </td>
        <td>
       sandeep@gmail.com
        </td>
      </tr>
      <tr>
        <td>
        06
        </td>
        <td>
        Aswin 
        </td>
        <td>
        Computer Science
        </td>
        <td>
     9044990236
        </td>
        <td>
       aswinsandeep@gmail.com
        </td>
      </tr>
    </table>
    </div> 
    </div>
    </>
  );
}