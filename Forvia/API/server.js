import express from 'express';
import path from 'path';

const app = express();
const PORT = process.env.PORT || 3500;

// Gestion de la route racine
app.get('/', (req, res) => {
    res.sendFile(path.join(process.cwd(), 'index.html'));
});

// Route pour obtenir les prévisions météorologiques
app.get('/weather', async (req, res) => {
    const city = req.query.city;
    const apiKey = '37a127296d3365ab2969e408b3e7e731'; 
    const apiUrl = `https://api.openweathermap.org/data/2.5/weather?q=${city}&appid=${apiKey}`;

    try {
        const response = await fetch(apiUrl);
        const data = await response.json();
        res.json(data);
    } catch (error) {
        console.error('Error fetching weather data:', error);
        res.status(500).json({ error: 'Unable to fetch weather data' });
    }
});

// Démarrage du serveur
app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});
