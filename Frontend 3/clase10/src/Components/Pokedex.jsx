import React, { useEffect, useState } from 'react'
const endpoint = "https://pokeapi.co/api/v2/pokemon?limit=10&offset=0"
import axios from 'axios'
import { Card } from './Card'


const Pokedex = () => {
  const [pokemones, setPokemones] = useState([])

  useEffect(()=> {
    const axiosData = async () => {
      let res = await axios(endpoint);
      setPokemones(res.data.results);
      console.log(res.data.results)
    };
    axiosData();
  }, []);


  return (
    <>  

    {pokemones.map((pokemon) =>(
        <Card key='index' pokemon={pokemon} />
    ))}
    
    </>
  )
}

export default Pokedex