const Navbar = () => {
  const titulos =  ['Inicio', 'Productos', 'Contacto']

  console.log(titulos)
  return (
    <div>
        {titulos.map((titulo, index) => <h4 key={index}>{titulo}</h4>)}
    </div>
  )
}

export default Navbar