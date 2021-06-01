import React, { Fragment } from 'react';
import 'bulma/css/bulma.min.css';
import { Button } from 'react-bulma-components';
import 'app.scss';
import Routes from './routes';
import { BrowserRouter } from 'react-router-dom'
import Menu from './components/common/menu';

const App = () => {
    return (
        <Fragment>
            <BrowserRouter>
                <Menu />
                <Routes />
            </BrowserRouter>
        </Fragment>
    )
}

export default App;

