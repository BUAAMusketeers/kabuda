package com.kabuda.service;

import com.kabuda.dao.VehicleDao;
import com.kabuda.entity.Vehicle;
import com.kabuda.entity.domain.VehicleBean;
import com.kabuda.entity.domain.VehicleRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

@Service("vehicleService")
@Transactional
public class VehicleService {

    private final VehicleDao vehicleDao;

    @Autowired
    public VehicleService(VehicleDao vehicleDao) {
        this.vehicleDao = vehicleDao;
    }

    public int getVehicleCount(int type) {
        return vehicleDao.countVehicle(type);
    }

    public List<VehicleBean> getVehicleList(VehicleRequest vehicleRequest) {
        return vehicleDao.listVehicle(vehicleRequest);
    }

    public  List<Vehicle> getVehicleListByUserId(int userId){
        return vehicleDao.listVehicleByUserId(userId);
    }

    public VehicleBean getVehicleInfoById(int id){
        return vehicleDao.getVehicleInfoById(id);
    }


    public Vehicle getVehicleById(int id){
        return vehicleDao.getVehicleById(id);
    }

    public Integer getVehicleByEN(String equipmentNumber){
        return vehicleDao.getVehicleByEN(equipmentNumber);
    }

    public int insert(Vehicle vehicle){
        return vehicleDao.saveVehicle(vehicle);
    }

    public void update(Vehicle vehicle){
        vehicleDao.updateVehicle(vehicle);
    }
}
