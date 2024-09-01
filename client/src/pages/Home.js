import React, { useState, useEffect } from 'react';
import { DogAPI, DogData, GetDogBreedData } from '../components/dogapi';
import Header from '../components/Header';
import LoadingIcon from '../components/LoadingIcon';
import DogList from '../components/DogList';
import { Box, Tab, Tabs, TabList, Typography, TabPanel } from '@mui/joy';

export default function Home() {
  const [dogList, setDogList] = useState(null);
  const [selectedTab, setSelectedTab] = useState(0);

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
  }

  useEffect(() => {
    getDogData();
  }, []);
    
  const cssContainer = {
    width: '100%',
    display: 'flex',
    justifyContent: 'center',
    alignItems: 'center'
  }
  
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
                <Typography variant="body1" sx={{ fontWeight: 'bold' }}>Currently under maintenance. It will be available as soon as the server is set up.</Typography>
              </Box>
        </TabPanel>
      </Tabs>
    </div>
  )
}