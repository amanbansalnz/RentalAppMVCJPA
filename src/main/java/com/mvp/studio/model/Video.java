package com.mvp.studio.model;


import javax.persistence.Entity;
import javax.persistence.Id;
import java.util.ArrayList;
import java.util.List;

/**
 * This sort of class is called a pojo where it only keeps state and attributes associated with this pojo
 */

@Entity
public class Video {

    @Id
    private Long id;
    private String movieTitle;
    private boolean isCheckedOut;
    private double rating;

//    private List<Rating> ratingHistory = new ArrayList<Rating>();

    public Video(){

    }


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Video(String movieTitle){
        this.movieTitle = movieTitle;
    }

    public String getMovieTitle() {
        return movieTitle;
    }

    public void setMovieTitle(String movieTitle) {
        this.movieTitle = movieTitle;
    }


    public boolean isCheckedOut() {
        return isCheckedOut;
    }

    public void setCheckedOut(boolean checkedOut) {
        isCheckedOut = checkedOut;
    }

    public double getRating() {
        return rating;
    }

    public void setRating(double rating) {

        this.rating = rating;
//        ratingHistory.add(rating);
//
//        Double ratingSum = Double.valueOf(0);
//
//        for(Double d : ratingHistory){
//            ratingSum+=d; // same as averageRatingSum = averageRatingSum + integer;
//        }
//
//        this.rating = (ratingSum/ratingHistory.size());
    }

    @Override
    public String toString() {
        return  "----------------------------------------------------------- \n" +
                "| movieTitle: \"" + movieTitle + "\""+
                "| isCheckedOut:" + isCheckedOut +
                " | rating:" + getRating() + " | \n";
    }


}