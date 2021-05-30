import * as React from 'react';
import style from "../style.module.scss";

import {
    getTheme, FontIcon
} from 'office-ui-fabric-react';
import {Depths} from "@uifabric/fluent-theme";


const Home = (props) => {
    const {palette} = getTheme();

    return (
        <div className={style.flexContainer}>
            <div className={style.homeContent} style={{backgroundColor: palette.neutralLight}}>
                <div className={style.placeholder}>
                    <img src={require('../res/record.jpg')} alt=""/>
                </div>

                <div className={style.heading}>
                    <h3>VaccineHero.Ro platform for a good life. All your medical history with vaccines, securely accessible from everywhere!</h3>
                </div>

                <div className={style.row}>
                    <div className={style.col}>
                        <div className={style.card} style={{boxShadow: Depths.depth8}}>
                            <FontIcon iconName="ProfileSearch" className={style.icon}/>
                            <p>
                                Find the best vaccination center nearby. Explore doctors by specialty or hospital from your area, together
                                with their ratings.
                            </p>
                        </div>
                    </div>
                    <div className={style.col}>
                        <div className={style.card} style={{boxShadow: Depths.depth8}}>
                            <FontIcon iconName="DataConnectionLibrary" className={style.icon}/>
                            <p>
                                Store all your medical history with vaccines in a safe place, accessible only to you and to your
                                doctors.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    );
};

export default Home;
