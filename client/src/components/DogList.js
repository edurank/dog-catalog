import React, { useState } from 'react';
import { Box, Typography, Input, FormControl } from '@mui/joy';
import Pagination from '@mui/material/Pagination';
import { InputLabel } from '@mui/material';
import { Link } from 'react-router-dom';

const itemsPerPage = 5;

function DogList({ dogData }) {
  const [page, setPage] = useState(1);
  const [searchTerm, setSearchTerm] = useState('');

  const handleChangePage = (event, newPage) => {
    setPage(newPage);
  };

  const handleSearchChange = (event) => {
    setSearchTerm(event.target.value);
    setPage(1);
  };

  const filteredData = dogData.filter(item =>
    item.name.toLowerCase().includes(searchTerm.toLowerCase())
  );

  const startIndex = (page - 1) * itemsPerPage;
  const paginatedData = filteredData.slice(startIndex, startIndex + itemsPerPage);

  return (

    <Box sx={{ p: 4, borderRadius: 'md', boxShadow: 'lg', maxWidth: '900px', minWidth: '500px', xs:'100%', minHeight: '100%', margin: 'auto' }}>
      <Box sx={{ mb: 3 }}>
        <FormControl fullWidth variant="outlined">
          <InputLabel htmlFor="search">Search breeds</InputLabel>
          <Input
            id="search"
            value={searchTerm}
            onChange={handleSearchChange}
            placeholder="Search breeds..."
            sx={{ fontSize: '1rem', bgcolor: 'background.paper' }}
          />
        </FormControl>
      </Box>
      <Box sx={{ border: '1px solid', borderColor: 'divider', borderRadius: 'md', overflow: 'hidden' }}>
        {paginatedData.map((item, index) => (
            <Link to={`dog/${item.id}`} state={{dog: item}} style={{ textDecoration: 'none', color: 'inherit' }}>
          <Box
            key={index}
            sx={{
              display: 'flex',
              justifyContent: 'space-between',
              p: 2,
              borderBottom: '1px solid',
              borderColor: 'divider',
              backgroundColor: 'background.default',
              cursor: 'pointer',
              '&:hover': {
                backgroundColor: 'background.level1',
                boxShadow: 'md',
              },
            }}
          >

              <div>
                <Typography variant="body1" sx={{ fontWeight: 'bold' }}>{item.name}</Typography>
                <div style={{display: 'flex', alignItems: 'center'}}>
                  <img src="/images/heart.svg" width={12} height={12} style={{marginRight: '4px'}} />
                  <Typography variant="body1" sx={{ textAlign: 'right' }}>{item.life_span}</Typography>
                </div>
              </div>
          </Box>
            </Link>
        ))}
      </Box>
      <Box sx={{ display: 'flex', justifyContent: 'center', mt: 2 }}>
        <Pagination
          count={Math.ceil(filteredData.length / itemsPerPage)}
          page={page}
          onChange={handleChangePage}
          siblingCount={1}
          boundaryCount={1}
          color="primary"
        />
      </Box>
    </Box>
  );
}

export default DogList;
