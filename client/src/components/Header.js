import React from 'react'
import { Link } from 'react-router-dom'

export default function Header () {
    
    const cssHeader = {
        height: '100px',
        width: '100%',
        display: 'flex',
        alignItems: 'center',
        justifyContent: 'center',
    }
    
    const cssLogo = {
        cursor: 'pointer',
        display: 'flex',
        alignItems: 'center'
    }

    return (
        <div style={cssHeader}>
            <Link to={'/'} style={{ textDecoration: 'none', color: 'inherit' }}>
                <div style={cssLogo}>
                        <img src="/images/dog-logo.svg" width={50} height={50} />
                        <h3>Dog Catalog</h3>
                </div>
            </Link>
        </div>
    )
}