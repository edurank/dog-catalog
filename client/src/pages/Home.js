import React, { useState, useEffect } from 'react';
import { DogAPI, DogData, GetDogBreedData, getTestData, getPopularByCountry } from '../components/dogapi';
import Header from '../components/Header';
import LoadingIcon from '../components/LoadingIcon';
import DogList from '../components/DogList';
import { Box, Card, CardContent, Tab, Tabs, TabList, Typography, TabPanel } from '@mui/joy';
import Autocomplete from '@mui/joy/Autocomplete';
import Grid from '@mui/joy/Grid';
import { CardMedia } from '@mui/material';
import { Link } from 'react-router-dom';

export default function Home() {
  const [dogList, setDogList] = useState(null);
  const [selectedTab, setSelectedTab] = useState(0);
  const [testData, setTestData] = useState([]);
    
  const handleTabChange = (event, newValue) => {
    setSelectedTab(newValue);
  }

  const getDogData = () => {
    GetDogBreedData()
      .then((data) => {
        console.log(data);
        setDogList(data);
      })
      .catch(error => {
        console.error(error);
      });
    getPopularByCountry()
      .then((data) => {
        setTestData(data);
      })
        .catch(error => {
          console.error(error);
        });
  }

  useEffect(() => {
    getDogData();
  }, []);

  useEffect(() => {
  }, [selectedTab]);
    
  const cssContainer = {
    width: '100%',
    display: 'flex',
    justifyContent: 'center',
    alignItems: 'center'
  }
  
  const onAutocompleteChange = (event, newValue) => {
    getPopularByCountry(newValue.id)
      .then((data) => {
        setTestData(data);
      })
        .catch(error => {
          console.error(error);
        });
  }

  const countries = [
    {label: 'Brazil', id: 'BR'},
    {label: 'France', id: 'FR'},
    {label: 'Australia', id: 'AU'},
    {label: 'Canada', id: 'CA'},
    {label: 'Germany', id: 'DE'},
    {label: 'Japan', id: 'JP'},
    {label: 'India', id: 'IN'}
  ]

  return (
    <div> 
      <Header />
      <Tabs style={cssContainer} sx={{ width: '100%' }} value={selectedTab} onChange={handleTabChange}>
        <TabList>
          <Tab>All</Tab>
          <Tab>Popular by country<sup style={{ color: 'red' }}>beta</sup></Tab>
        </TabList>

        <TabPanel value={0}>
          <div style={cssContainer}>
              {dogList ?
                  <DogList dogData={dogList} style={{ marginTop: '-50px' }}/>
                :
                  <LoadingIcon /> }
          </div>

        </TabPanel>

        <TabPanel value={1}>
              <Box>
                <Autocomplete
                  placeholder='select country...'
                  options={countries}
                  onChange={onAutocompleteChange}
                />
                <Grid container spacing={2}>
                  {Array.isArray(testData) && testData.map((item, index) => (
                    <Grid item xs={12} sm={6} md={4} key={item.id}>
                    <Link to={`dog/${item.id}`} state={{dog: item}} style={{ textDecoration: 'none', color: 'inherit' }}>
                      <Card>
                        <CardMedia
                          component="img"
                          alt={item.name}
                          image={item.image_url}
                          sx={{ height: 150, objectFit: 'contain' }} // Adjust the height as needed
                        />
                        <CardContent>
                          <Typography variant="h6" align="center">
                            {item.name}
                          </Typography>
                        </CardContent>
                      </Card>
                      </Link>
                    </Grid>
                  ))}
                </Grid>
              </Box>
        </TabPanel>
      </Tabs>
    </div>
  )
}
