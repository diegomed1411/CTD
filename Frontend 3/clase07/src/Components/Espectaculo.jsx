export const Espectaculo = ({item, setShowForm}) => {
  return (
    <>
    <h3>{item.artista}</h3>
    <img src={item.img} alt={`foto de ${item.artista}`} />
    <h3>Entradas desde: ${item.precio}</h3>
    <button onClick={()=>setShowForm(true)}>Comprar Entradas</button>
    </>
  )
}
