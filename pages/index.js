export default function Home() {
  return (
    <div style={{
      display: 'flex',
      flexDirection: 'column',
      alignItems: 'center',
      justifyContent: 'center',
      height: '100vh',
      fontFamily: 'Arial, sans-serif',
      backgroundColor: '#f0f2f5'
    }}>
      <h1>Hola Mundo - Examen Ricardo Esquivel Palacios</h1>
      <p>Desplegado automáticamente con GitHub Actions en AWS ECS Fargate.</p>
    </div>
  );
}
