import React, { useEffect, useState } from 'react'; 
import { GetDogImage } from '../components/dogapi';
import { useParams, useLocation } from 'react-router-dom';
import { Card, CardContent, Typography, Button, Box, AspectRatio, Divider, Stack } from '@mui/joy';
import LoadingIcon from '../components/LoadingIcon';
import Header from '../components/Header';

export default function DogDetails ({ dogId }) {
    const location = useLocation();
    const { state } = location;
    const { id } = useParams();
    const dog = state?.dog;
    const [dogImageData, setDogImageData] = useState(null);

    const getDogImageData = () => {
        GetDogImage(dog.reference_image_id)
            .then(data => {
                setDogImageData(data);
            })
            .catch(err => {
                console.error(err);
            })
    }

    useEffect(() => {
        getDogImageData();
    }, []); 

    return ( 
        <div>
            <Header />
            {dogImageData ?
                <div>
                <Card
                  variant="outlined"
                  sx={{
                    maxWidth: 400,
                    margin: 'auto',
                    borderRadius: 2,
                    boxShadow: '0 6px 12px rgba(0, 0, 0, 0.1)',
                  }}
                >
                  <AspectRatio ratio="16/9">
                    <img
                      src={dogImageData.url}
                      alt={dog.name}
                      loading="lazy"
                      style={{ borderRadius: '8px 8px 0 0', objectFit: 'contain' }}
                    />
                  </AspectRatio>
                  <CardContent>
                    <Typography
                      level="h2"
                      component="div"
                      fontSize="lg"
                      fontWeight="bold"
                      gutterBottom
                      sx={{ color: 'primary.700' }}
                    >
                      {dog.name}
                    </Typography>
                    <Divider />
                    <Stack spacing={1.5} sx={{ mt: 2 }}>
                      <Box>
                        <Typography level="body2" fontWeight="bold">
                          Breed For:
                        </Typography>
                        <Typography level="body2" sx={{ color: 'neutral.600' }}>
                          {dog.bred_for || 'Unavailable'}
                        </Typography>
                      </Box>
                      <Box>
                        <Typography level="body2" fontWeight="bold">
                          Breed Group:
                        </Typography>
                        <Typography level="body2" sx={{ color: 'neutral.600' }}>
                          {dog.breed_group || 'Not available'}
                        </Typography>
                      </Box>
                      <Box>
                        <Typography level="body2" fontWeight="bold">
                          Lifespan:
                        </Typography>
                        <Typography level="body2" sx={{ color: 'neutral.600' }}>
                          {dog.life_span || 'Not available'}
                        </Typography>
                      </Box>
                      <Box>
                        <Typography level="body2" fontWeight="bold">
                          Temperament:
                        </Typography>
                        <Typography level="body2" sx={{ color: 'neutral.600' }}>
                          {dog.temperament || 'Unavailable'}
                        </Typography>
                      </Box>
                      <Box>
                        <Typography level="body2" fontWeight="bold">
                          Origin:
                        </Typography>
                        <Typography level="body2" sx={{ color: 'neutral.600' }}>
                          {dog.origin || 'Unknown'}
                        </Typography>
                      </Box>
                    </Stack>
                    <Box display="flex" justifyContent="center" mt={2}>
                      <Button
                        variant="solid"
                        color="primary"
                        size="sm"
                        sx={{ borderRadius: '8px' }}
                        onClick={() => window.history.back()}
                      >
                        Go Back
                      </Button>
                    </Box>
                  </CardContent>
                </Card>
                </div>
                :
                <LoadingIcon />
            }
        </div>
    )
}