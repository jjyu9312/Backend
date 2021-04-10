package com.safetour.myapp.model;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class FormServiceImp implements FormSerivce{
	
	@Autowired
	private FormDAO formDAO;
	


	@Override
	public List<TourDAO> getTourList(@Param("tour")TourDTO tourDTO) throws Exception {
		// TODO Auto-generated method stub
		return formDAO.getTourList(tourDTO);
	}
	@Override
	public List<TourDAO> getTourList_o(@Param("theme") String theme,@Param("partner") String partner, @Param("label")String selectLabel, @Param("label_2")String selectLabel2, @Param("label_3")String selectLabel3, @Param("label_4")String selectLabel4, @Param("label_5")String selectLabel5, @Param("label_6")String selectLabel6, @Param("label_7")String selectLabel7, @Param("label_8")String selectLabel8, @Param("label_9")String selectLabel9, @Param("label_10")String selectLabel10, @Param("label_11")String selectLabel11, @Param("label_12")String selectLabel12) throws Exception
	{
		// TODO Auto-generated method stub
		return formDAO.getTourList_o(theme, partner, selectLabel, selectLabel2, selectLabel3, selectLabel4, selectLabel5, selectLabel6, selectLabel7, selectLabel8, selectLabel9, selectLabel10, selectLabel11, selectLabel2);
	}
	@Override
	public List<TourDAO> getTourList_m(@Param("theme") String theme, @Param("partner") String partner, @Param("label")String selectLabel, @Param("label_2")String selectLabel2, @Param("label_3")String selectLabel3, @Param("label_4")String selectLabel4, @Param("label_5")String selectLabel5, @Param("label_6")String selectLabel6, @Param("label_7")String selectLabel7, @Param("label_8")String selectLabel8, @Param("label_9")String selectLabel9, @Param("label_10")String selectLabel10, @Param("label_11")String selectLabel11, @Param("label_12")String selectLabel12) throws Exception
	{
		// TODO Auto-generated method stub
		return formDAO.getTourList_m(theme, partner, selectLabel, selectLabel2, selectLabel3, selectLabel4, selectLabel5, selectLabel6, selectLabel7, selectLabel8, selectLabel9, selectLabel10, selectLabel11, selectLabel2);
	}
	@Override
	public List<TourDAO> getTourList_l(@Param("theme") String theme, @Param("partner") String partner, @Param("label")String selectLabel, @Param("label_2")String selectLabel2, @Param("label_3")String selectLabel3, @Param("label_4")String selectLabel4, @Param("label_5")String selectLabel5, @Param("label_6")String selectLabel6, @Param("label_7")String selectLabel7, @Param("label_8")String selectLabel8, @Param("label_9")String selectLabel9, @Param("label_10")String selectLabel10, @Param("label_11")String selectLabel11, @Param("label_12")String selectLabel12) throws Exception
	{
		// TODO Auto-generated method stub
		return formDAO.getTourList_l(theme, partner, selectLabel, selectLabel2, selectLabel3, selectLabel4, selectLabel5, selectLabel6, selectLabel7, selectLabel8, selectLabel9, selectLabel10, selectLabel11, selectLabel2);
	}
	@Override
	public List<TourDAO> getTourList_c(@Param("theme") String theme, @Param("partner") String partner, @Param("label")String selectLabel, @Param("label_2")String selectLabel2, @Param("label_3")String selectLabel3, @Param("label_4")String selectLabel4, @Param("label_5")String selectLabel5, @Param("label_6")String selectLabel6, @Param("label_7")String selectLabel7, @Param("label_8")String selectLabel8, @Param("label_9")String selectLabel9, @Param("label_10")String selectLabel10, @Param("label_11")String selectLabel11, @Param("label_12")String selectLabel12) throws Exception
	{
		// TODO Auto-generated method stub
		return formDAO.getTourList_c(theme, partner, selectLabel, selectLabel2, selectLabel3, selectLabel4, selectLabel5, selectLabel6, selectLabel7, selectLabel8, selectLabel9, selectLabel10, selectLabel11, selectLabel2);
	}
}
