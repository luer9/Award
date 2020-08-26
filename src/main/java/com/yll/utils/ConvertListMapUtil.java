package com.yll.utils;/**
 * 项目名称：myAward
 * 类 名 称：ConvertListMapUtil
 * 类 描 述：TODO
 * 创建时间：2020/3/19 15:50
 * 创 建 人：10265
 */

/**
 * @author yll
 * @description
 * @date 2020/3/19
 */

import com.yll.entity.ExportAwardinfor;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * List 集合转换成List Map 集合
 */
public class ConvertListMapUtil {
    public List<Map<String,Object>> convertListMap(List<ExportAwardinfor> list){
        List<Map<String, Object>> maps = new ArrayList<Map<String, Object>>();
        for (Object obj: list) {
            Class c = obj.getClass();
            Field[] fields = c.getDeclaredFields();
            Map<String, Object> map = new HashMap<String, Object>();
            for (Field fie: fields) {
                try {
                    fie.setAccessible(true);  //取消语言访问检查
                    map.put(fie.getName(),fie.get(obj));  //获取私有变量值
                } catch (IllegalArgumentException  e) {
                    e.printStackTrace();
                }catch (IllegalAccessException e) {
                    e.printStackTrace();
                }
            }
            //获取父类的私有属性
            for (Field fie: c.getSuperclass().getDeclaredFields()) {
                try {
                    fie.setAccessible(true);  //取消语言访问检查
                    map.put(fie.getName(),fie.get(obj));  //获取私有变量值
                } catch (IllegalArgumentException  e) {
                    e.printStackTrace();
                }catch (IllegalAccessException e) {
                    e.printStackTrace();
                }
            }
            maps.add(map);
        }
        return maps;
    }
}