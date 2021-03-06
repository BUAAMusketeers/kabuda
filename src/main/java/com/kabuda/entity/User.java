package com.kabuda.entity;

import java.io.Serializable;
import java.util.List;

public class User implements Serializable {

    private static final long serialVersionUID = -3638141227947495527L;

    private int id;
    private String phoneNumber;
    private transient String password;
    private String name;                    // 用户真实姓名
    private int sex;                        // 性别, 0代表女性，1代表男性
    private int isDriver;                   // 是否为驾驶员，0代表不是，1代表是
    private String model;                   // 驾驶员所能驾驶的机型
    private List<String> modelNameList;     // 驾驶员所能驾驶的机型列表
    private int price;                      // 驾驶员价格   元/天
    private int drivingAge;                 // 驾驶年龄
    private String locationCode;            // 驾驶员地址的代码
    private String location;                // 驾驶员地址
    private String headPotrait;             // 用户头像的url
    private transient int userLevel;        // 用户等级，3代表普通用户，4代表高级用户，5代表管理员
    private transient int isActive;         // 用户是否被激活，0代表没被激活，1代表激活

    public User() {
    }

    public User(String phoneNumber, String password, String name, int sex, int isDriver, int userLevel, int isActive) {
        this.phoneNumber = phoneNumber;
        this.password = password;
        this.name = name;
        this.sex = sex;
        this.isDriver = isDriver;
        this.userLevel = userLevel;
        this.isActive = isActive;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<String> getModelNameList() {
        return modelNameList;
    }

    public void setModelNameList(List<String> modelNameList) {
        this.modelNameList = modelNameList;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public int getSex() {
        return sex;
    }

    public void setSex(int sex) {
        this.sex = sex;
    }

    public int getIsDriver() {
        return isDriver;
    }

    public void setIsDriver(int isDriver) {
        this.isDriver = isDriver;
    }

    public int getDrivingAge() {
        return drivingAge;
    }

    public void setDrivingAge(int drivingAge) {
        this.drivingAge = drivingAge;
    }

    public int getUserLevel() {
        return userLevel;
    }

    public void setUserLevel(int userLevel) {
        this.userLevel = userLevel;
    }

    public String getLocationCode() {
        return locationCode;
    }

    public void setLocationCode(String locationCode) {
        this.locationCode = locationCode;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getHeadPotrait() {
        return headPotrait;
    }

    public void setHeadPotrait(String headPotrait) {
        this.headPotrait = headPotrait;
    }

    public int getIsActive() {
        return isActive;
    }

    public void setIsActive(int isActive) {
        this.isActive = isActive;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }
}
