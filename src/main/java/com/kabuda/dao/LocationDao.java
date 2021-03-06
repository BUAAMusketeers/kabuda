package com.kabuda.dao;


import com.kabuda.dao.common.Dao;
import com.kabuda.dao.common.MyBatisDao;
import com.kabuda.entity.Location;

import java.util.List;

@MyBatisDao
public interface LocationDao extends Dao<Location>{

    List<Location> listProvince();

    List<Location> listCity(String parentProvince);

    List<Location> listCounty(String parentCity);

    Location getLocationById(int id);

    Location getLocationByLC(String LocationCode);

    Location getLocationByCity(String curCity);

    Location getLocationByCounty(String curCounty);

}
