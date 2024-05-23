const Card = ({cliente}) => {
  return (
    <>
    <h3 style={{color:'green'}}>Gracias, {cliente.nombre}</h3>
    <h4 style={{color:'green'}}>Vas a recibir tu entrada al mail: {cliente.email}</h4>
    </>
  )
}

export default Card