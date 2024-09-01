import axios from 'axios'

export const GetDogBreedData = () => {
    var config = {
        method: 'GET',
        url: process.env.REACT_APP_API_URL + "/breeds?limit=25&page=0",
        headers: {
            'Content-Type': 'application/json',
            'x-auth-key': process.env.REACT_APP_API_KEY
        }
    }

    return axios(config)
        .then((res) => {
            return res.data;
        })
        .catch((error) => {
            console.error(error);
            return null;
        });
}

export const DogData = () => {
    var config = {
        method: 'GET',
        url: process.env.REACT_APP_API_URL + "/breeds",
        headers: {
            'Content-Type': 'application/json',
            'x-auth-key': process.env.REACT_APP_API_KEY
        }
    }

    return axios(config)
        .then(res => {
            console.log(res.data);
        })
        .catch(err => {
            console.error(err);
            return null;
        });
}

export const GetDogImage = (id) => {
    var config = {
        method: 'GET',
        url: process.env.REACT_APP_API_URL + "/images/" + id,
        headers: {
            'Content-Type': 'application/json',
            'x-auth-key': process.env.REACT_APP_API_KEY
        }
    }

    return axios(config)
        .then(res => res.data)
        .catch(err => {
            console.error(err);
            return null;
        })
}