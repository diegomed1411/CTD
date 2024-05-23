import './App.css'
import { useState } from 'react';
import { espectaculos } from './utils/espectaculos';
import { Espectaculo } from './Components/Espectaculo';
import { Form } from './Components/Form';

function App() {
  const [showForm, setShowForm] = useState(false)
  return (
    <>
      {espectaculos.map((item)=>(
      <Espectaculo 
      key={item.id} 
      item={item}
      setShowForm={setShowForm}/>
      ))}      
      {showForm && <Form />}
      </>
  )
}

export default App
