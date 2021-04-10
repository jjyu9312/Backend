package com.safetour.myapp.model;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface FormDAO {
	
	
	List<TourDAO> getTourList(@Param("tour") TourDTO tourDTO)throws Exception;
	List<TourDAO> getTourList_o(@Param("theme") String theme, @Param("partner") String partner, @Param("label")String selectLabel, @Param("label_2")String selectLabel2, @Param("label_3")String selectLabel3, @Param("label_4")String selectLabel4, @Param("label_5")String selectLabel5, @Param("label_6")String selectLabel6, @Param("label_7")String selectLabel7, @Param("label_8")String selectLabel8, @Param("label_9")String selectLabel9, @Param("label_10")String selectLabel10, @Param("label_11")String selectLabel11, @Param("label_12")String selectLabel12) throws Exception;
	List<TourDAO> getTourList_m(@Param("theme") String theme, @Param("partner") String partner, @Param("label")String selectLabel, @Param("label_2")String selectLabel2, @Param("label_3")String selectLabel3, @Param("label_4")String selectLabel4, @Param("label_5")String selectLabel5, @Param("label_6")String selectLabel6, @Param("label_7")String selectLabel7, @Param("label_8")String selectLabel8, @Param("label_9")String selectLabel9, @Param("label_10")String selectLabel10, @Param("label_11")String selectLabel11, @Param("label_12")String selectLabel12) throws Exception;
	List<TourDAO> getTourList_l(@Param("theme") String theme, @Param("partner") String partner, @Param("label")String selectLabel, @Param("label_2")String selectLabel2, @Param("label_3")String selectLabel3, @Param("label_4")String selectLabel4, @Param("label_5")String selectLabel5, @Param("label_6")String selectLabel6, @Param("label_7")String selectLabel7, @Param("label_8")String selectLabel8, @Param("label_9")String selectLabel9, @Param("label_10")String selectLabel10, @Param("label_11")String selectLabel11, @Param("label_12")String selectLabel12) throws Exception;
	List<TourDAO> getTourList_c(@Param("theme") String theme, @Param("partner") String partner, @Param("label")String selectLabel, @Param("label_2")String selectLabel2, @Param("label_3")String selectLabel3, @Param("label_4")String selectLabel4, @Param("label_5")String selectLabel5, @Param("label_6")String selectLabel6, @Param("label_7")String selectLabel7, @Param("label_8")String selectLabel8, @Param("label_9")String selectLabel9, @Param("label_10")String selectLabel10, @Param("label_11")String selectLabel11, @Param("label_12")String selectLabel12) throws Exception;

}
