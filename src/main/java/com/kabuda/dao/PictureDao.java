package com.kabuda.dao;

import com.kabuda.dao.common.Dao;
import com.kabuda.dao.common.MyBatisDao;
import com.kabuda.entity.Picture;

import java.util.List;

@MyBatisDao
public interface PictureDao extends Dao<Picture>{

    List<Picture> listPictureByVehicleId(int vehicleId);

    Picture getPictureById(int id);

    int savePicture(Picture picture);

    void updatePicture(Picture picture);

    void removePicture(int id);

    void removePictureByVehicleId(int vehicleId);
}
